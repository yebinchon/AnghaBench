
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int scsi_status; char sense_data; int sense_len; scalar_t__ resid; } ;
struct TYPE_14__ {int flags; int status; int target_id; } ;
union ccb {TYPE_3__ csio; TYPE_7__ ccb_h; } ;
typedef int u_int8_t ;
typedef int u_int32_t ;
typedef char scsi_sense_data ;
struct TYPE_8__ {int service; int status; int info; int hostdrive; int ionode; } ;
struct TYPE_9__ {TYPE_1__ sync; } ;
struct TYPE_12__ {int size; TYPE_2__ eu; } ;
struct gdt_softc {int sc_status; int sc_info; TYPE_5__ sc_dvr; int sc_hanum; int sc_buffer_dmat; int sc_ccb_queue; int (* sc_release_event ) (struct gdt_softc*) ;int (* sc_copy_cmd ) (struct gdt_softc*,struct gdt_ccb*) ;scalar_t__ sc_cmd_cnt; scalar_t__ sc_cmd_off; int (* sc_set_sema0 ) (struct gdt_softc*) ;int sc_devnode; scalar_t__ (* sc_test_busy ) (struct gdt_softc*) ;} ;
struct gdt_ccb {char* gc_scratch; char* gc_cmd; int gc_service; int gc_cmd_index; int gc_scratch_busbase; int gc_dmamap; int gc_timeout; void* gc_cmd_len; void* gc_flags; union ccb* gc_ccb; } ;
struct TYPE_13__ {scalar_t__ req_queue_act; scalar_t__ req_queue_max; int io_count_act; } ;
struct TYPE_11__ {int tqe; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_NOT_THERE ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_SIM_QUEUED ;
 int DELAY (int) ;
 int GDT_CACHESERVICE ;
 int GDT_CMD_COMMANDINDEX ;
 int GDT_CMD_OPCODE ;
 int GDT_CMD_SZ ;
 int GDT_CMD_UNION ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_DEBUG ;
 int GDT_D_INTR ;
 int GDT_ES_SYNC ;
 void* GDT_GCF_SCREEN ;
 int GDT_READ ;
 int GDT_SCREENSERVICE ;
 int GDT_SCREEN_MSG_ADDR ;
 int GDT_SCREEN_MSG_HANDLE ;
 int GDT_SCREEN_SZ ;
 int GDT_SCR_MSG_ALEN ;
 size_t GDT_SCR_MSG_ANSWER ;
 size_t GDT_SCR_MSG_EXT ;
 size_t GDT_SCR_MSG_HANDLE ;
 int GDT_SCR_MSG_LEN ;
 int GDT_SCR_MSG_TEXT ;
 int GDT_S_BSY ;
 int GDT_S_OK ;
 int GDT_S_RAW_SCSI ;
 int GDT_WRITE ;
 int SCSI_STATUS_CHECK_COND ;
 int SSD_ELEM_NONE ;
 int SSD_KEY_NOT_READY ;
 int SSD_TYPE_NONE ;
 int TAILQ_INSERT_HEAD (int *,TYPE_7__*,int ) ;
 int bcopy (int*,char*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (char*,int ) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;
 int gdt_dec32 (char*) ;
 int gdt_enc16 (char*,int ) ;
 int gdt_enc32 (char*,int) ;
 struct gdt_ccb* gdt_get_ccb (struct gdt_softc*) ;
 TYPE_6__ gdt_stat ;
 int gdt_store_event (int ,int,TYPE_5__*) ;
 int printf (char*,...) ;
 void* roundup (int,int) ;
 int scsi_set_sense_data (char*,int ,int,int ,int,int,int ) ;
 TYPE_4__ sim_links ;
 scalar_t__ stub1 (struct gdt_softc*) ;
 int stub2 (struct gdt_softc*) ;
 int stub3 (struct gdt_softc*,struct gdt_ccb*) ;
 int stub4 (struct gdt_softc*) ;
 scalar_t__ stub5 (struct gdt_softc*) ;
 int stub6 (struct gdt_softc*) ;
 int stub7 (struct gdt_softc*,struct gdt_ccb*) ;
 int stub8 (struct gdt_softc*) ;
 int xpt_done (union ccb*) ;

int
gdt_sync_event(struct gdt_softc *gdt, int service,
               u_int8_t index, struct gdt_ccb *gccb)
{
    union ccb *ccb;

    GDT_DPRINTF(GDT_D_INTR,
                ("gdt_sync_event(%p, %d, %d, %p)\n", gdt,service,index,gccb));

    ccb = gccb->gc_ccb;

    if (service == GDT_SCREENSERVICE) {
        u_int32_t msg_len;

        msg_len = gdt_dec32(gccb->gc_scratch + GDT_SCR_MSG_LEN);
        if (msg_len)
            if (!(gccb->gc_scratch[GDT_SCR_MSG_ANSWER] &&
                  gccb->gc_scratch[GDT_SCR_MSG_EXT])) {
                gccb->gc_scratch[GDT_SCR_MSG_TEXT + msg_len] = '\0';
                printf("%s",&gccb->gc_scratch[GDT_SCR_MSG_TEXT]);
            }

        if (gccb->gc_scratch[GDT_SCR_MSG_EXT] &&
            !gccb->gc_scratch[GDT_SCR_MSG_ANSWER]) {
            while (gdt->sc_test_busy(gdt))
                DELAY(1);
            bzero(gccb->gc_cmd, GDT_CMD_SZ);
            gccb = gdt_get_ccb(gdt);
            if (gccb == ((void*)0)) {
                device_printf(gdt->sc_devnode, "No free command index found\n");
                return (1);
            }
            gccb->gc_service = service;
            gccb->gc_flags = GDT_GCF_SCREEN;
            gdt_enc32(gccb->gc_cmd + GDT_CMD_COMMANDINDEX,
                      gccb->gc_cmd_index);
            gdt_enc16(gccb->gc_cmd + GDT_CMD_OPCODE, GDT_READ);
            gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_SCREEN_MSG_HANDLE,
                      gccb->gc_scratch[GDT_SCR_MSG_HANDLE]);
            gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_SCREEN_MSG_ADDR,
                      gccb->gc_scratch_busbase);
            gdt->sc_set_sema0(gdt);
            gdt->sc_cmd_off = 0;
            gccb->gc_cmd_len = roundup(GDT_CMD_UNION + GDT_SCREEN_SZ,
                                      sizeof(u_int32_t));
            gdt->sc_cmd_cnt = 0;
            gdt->sc_copy_cmd(gdt, gccb);
            gdt->sc_release_event(gdt);
            return (0);
        }

        if (gccb->gc_scratch[GDT_SCR_MSG_ANSWER] &&
            gdt_dec32(gccb->gc_scratch + GDT_SCR_MSG_ALEN)) {

            if (gdt_dec32(gccb->gc_scratch + GDT_SCR_MSG_ALEN) == 1) {
                gdt_enc32(gccb->gc_scratch + GDT_SCR_MSG_ALEN, 0);
                gdt_enc32(gccb->gc_scratch + GDT_SCR_MSG_LEN, 1);
                gccb->gc_scratch[GDT_SCR_MSG_TEXT] = 0;
            } else {
                gdt_enc32(gccb->gc_scratch + GDT_SCR_MSG_ALEN,
                          gdt_dec32(gccb->gc_scratch + GDT_SCR_MSG_ALEN) - 2);
                gdt_enc32(gccb->gc_scratch + GDT_SCR_MSG_LEN, 2);
                gccb->gc_scratch[GDT_SCR_MSG_TEXT] = 1;
                gccb->gc_scratch[GDT_SCR_MSG_TEXT + 1] = 0;
            }
            gccb->gc_scratch[GDT_SCR_MSG_EXT] = 0;
            gccb->gc_scratch[GDT_SCR_MSG_ANSWER] = 0;
            while (gdt->sc_test_busy(gdt))
                DELAY(1);
            bzero(gccb->gc_cmd, GDT_CMD_SZ);
            gccb = gdt_get_ccb(gdt);
            if (gccb == ((void*)0)) {
                device_printf(gdt->sc_devnode, "No free command index found\n");
                return (1);
            }
            gccb->gc_service = service;
            gccb->gc_flags = GDT_GCF_SCREEN;
            gdt_enc32(gccb->gc_cmd + GDT_CMD_COMMANDINDEX,
                      gccb->gc_cmd_index);
            gdt_enc16(gccb->gc_cmd + GDT_CMD_OPCODE, GDT_WRITE);
            gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_SCREEN_MSG_HANDLE,
                      gccb->gc_scratch[GDT_SCR_MSG_HANDLE]);
            gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_SCREEN_MSG_ADDR,
                      gccb->gc_scratch_busbase);
            gdt->sc_set_sema0(gdt);
            gdt->sc_cmd_off = 0;
            gccb->gc_cmd_len = roundup(GDT_CMD_UNION + GDT_SCREEN_SZ,
                                      sizeof(u_int32_t));
            gdt->sc_cmd_cnt = 0;
            gdt->sc_copy_cmd(gdt, gccb);
            gdt->sc_release_event(gdt);
            return (0);
        }
        printf("\n");
        return (0);
    } else {
 callout_stop(&gccb->gc_timeout);
        if (gdt->sc_status == GDT_S_BSY) {
            GDT_DPRINTF(GDT_D_DEBUG, ("gdt_sync_event(%p) gccb %p busy\n",
                                      gdt, gccb));
            TAILQ_INSERT_HEAD(&gdt->sc_ccb_queue, &ccb->ccb_h, sim_links.tqe);
            ++gdt_stat.req_queue_act;
            if (gdt_stat.req_queue_act > gdt_stat.req_queue_max)
                gdt_stat.req_queue_max = gdt_stat.req_queue_act;
            return (2);
        }

        bus_dmamap_sync(gdt->sc_buffer_dmat, gccb->gc_dmamap,
            (ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN ?
            BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE);
        bus_dmamap_unload(gdt->sc_buffer_dmat, gccb->gc_dmamap);

        ccb->csio.resid = 0;
        if (gdt->sc_status == GDT_S_OK) {
            ccb->ccb_h.status |= CAM_REQ_CMP;
            ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
        } else {

            if (gccb->gc_service == GDT_CACHESERVICE) {
                struct scsi_sense_data *sense;

                ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR | CAM_AUTOSNS_VALID;
                ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
                ccb->csio.scsi_status = SCSI_STATUS_CHECK_COND;
                bzero(&ccb->csio.sense_data, ccb->csio.sense_len);
                sense = &ccb->csio.sense_data;
                scsi_set_sense_data(sense,
                                                     SSD_TYPE_NONE,
                                                      1,
                                                  SSD_KEY_NOT_READY,
                                            0x4,
                                             0x01,
                                    SSD_ELEM_NONE);

                gdt->sc_dvr.size = sizeof(gdt->sc_dvr.eu.sync);
                gdt->sc_dvr.eu.sync.ionode = gdt->sc_hanum;
                gdt->sc_dvr.eu.sync.service = service;
                gdt->sc_dvr.eu.sync.status = gdt->sc_status;
                gdt->sc_dvr.eu.sync.info = gdt->sc_info;
                gdt->sc_dvr.eu.sync.hostdrive = ccb->ccb_h.target_id;
                if (gdt->sc_status >= 0x8000)
                    gdt_store_event(GDT_ES_SYNC, 0, &gdt->sc_dvr);
                else
                    gdt_store_event(GDT_ES_SYNC, service, &gdt->sc_dvr);
            } else {

                if (gdt->sc_status != GDT_S_RAW_SCSI || gdt->sc_info >= 0x100) {
                    ccb->ccb_h.status = CAM_DEV_NOT_THERE;
                } else {
                    ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR|CAM_AUTOSNS_VALID;
                    ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
                    ccb->csio.scsi_status = gdt->sc_info;
                    bcopy(gccb->gc_scratch, &ccb->csio.sense_data,
                          ccb->csio.sense_len);
                }
            }
        }
        --gdt_stat.io_count_act;
        xpt_done(ccb);
    }
    return (0);
}
