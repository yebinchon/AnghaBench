#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int scsi_status; char sense_data; int /*<<< orphan*/  sense_len; scalar_t__ resid; } ;
struct TYPE_14__ {int flags; int status; int /*<<< orphan*/  target_id; } ;
union ccb {TYPE_3__ csio; TYPE_7__ ccb_h; } ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int32_t ;
typedef  char scsi_sense_data ;
struct TYPE_8__ {int service; int status; int info; int /*<<< orphan*/  hostdrive; int /*<<< orphan*/  ionode; } ;
struct TYPE_9__ {TYPE_1__ sync; } ;
struct TYPE_12__ {int size; TYPE_2__ eu; } ;
struct gdt_softc {int sc_status; int sc_info; TYPE_5__ sc_dvr; int /*<<< orphan*/  sc_hanum; int /*<<< orphan*/  sc_buffer_dmat; int /*<<< orphan*/  sc_ccb_queue; int /*<<< orphan*/  (* sc_release_event ) (struct gdt_softc*) ;int /*<<< orphan*/  (* sc_copy_cmd ) (struct gdt_softc*,struct gdt_ccb*) ;scalar_t__ sc_cmd_cnt; scalar_t__ sc_cmd_off; int /*<<< orphan*/  (* sc_set_sema0 ) (struct gdt_softc*) ;int /*<<< orphan*/  sc_devnode; scalar_t__ (* sc_test_busy ) (struct gdt_softc*) ;} ;
struct gdt_ccb {char* gc_scratch; char* gc_cmd; int gc_service; int gc_cmd_index; int gc_scratch_busbase; int /*<<< orphan*/  gc_dmamap; int /*<<< orphan*/  gc_timeout; void* gc_cmd_len; void* gc_flags; union ccb* gc_ccb; } ;
struct TYPE_13__ {scalar_t__ req_queue_act; scalar_t__ req_queue_max; int /*<<< orphan*/  io_count_act; } ;
struct TYPE_11__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int CAM_AUTOSNS_VALID ; 
 int CAM_DEV_NOT_THERE ; 
 int CAM_DIR_IN ; 
 int CAM_DIR_MASK ; 
 int CAM_REQ_CMP ; 
 int CAM_SCSI_STATUS_ERROR ; 
 int CAM_SIM_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GDT_CACHESERVICE ; 
 int GDT_CMD_COMMANDINDEX ; 
 int GDT_CMD_OPCODE ; 
 int /*<<< orphan*/  GDT_CMD_SZ ; 
 int GDT_CMD_UNION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_DEBUG ; 
 int /*<<< orphan*/  GDT_D_INTR ; 
 int /*<<< orphan*/  GDT_ES_SYNC ; 
 void* GDT_GCF_SCREEN ; 
 int /*<<< orphan*/  GDT_READ ; 
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
 int /*<<< orphan*/  GDT_WRITE ; 
 int SCSI_STATUS_CHECK_COND ; 
 int /*<<< orphan*/  SSD_ELEM_NONE ; 
 int /*<<< orphan*/  SSD_KEY_NOT_READY ; 
 int /*<<< orphan*/  SSD_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 struct gdt_ccb* FUNC12 (struct gdt_softc*) ; 
 TYPE_6__ gdt_stat ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 void* FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_4__ sim_links ; 
 scalar_t__ FUNC17 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct gdt_softc*,struct gdt_ccb*) ; 
 int /*<<< orphan*/  FUNC20 (struct gdt_softc*) ; 
 scalar_t__ FUNC21 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct gdt_softc*,struct gdt_ccb*) ; 
 int /*<<< orphan*/  FUNC24 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC25 (union ccb*) ; 

int
FUNC26(struct gdt_softc *gdt, int service, 
               u_int8_t index, struct gdt_ccb *gccb)
{
    union ccb *ccb;

    FUNC1(GDT_D_INTR,
                ("gdt_sync_event(%p, %d, %d, %p)\n", gdt,service,index,gccb));

    ccb = gccb->gc_ccb;

    if (service == GDT_SCREENSERVICE) {
        u_int32_t msg_len;

        msg_len = FUNC9(gccb->gc_scratch + GDT_SCR_MSG_LEN);
        if (msg_len)
            if (!(gccb->gc_scratch[GDT_SCR_MSG_ANSWER] && 
                  gccb->gc_scratch[GDT_SCR_MSG_EXT])) {
                gccb->gc_scratch[GDT_SCR_MSG_TEXT + msg_len] = '\0';
                FUNC14("%s",&gccb->gc_scratch[GDT_SCR_MSG_TEXT]);
            }

        if (gccb->gc_scratch[GDT_SCR_MSG_EXT] && 
            !gccb->gc_scratch[GDT_SCR_MSG_ANSWER]) {
            while (gdt->sc_test_busy(gdt))
                FUNC0(1);
            FUNC6(gccb->gc_cmd, GDT_CMD_SZ);
            gccb = FUNC12(gdt);
            if (gccb == NULL) {
                FUNC8(gdt->sc_devnode, "No free command index found\n");
                return (1);
            }
            gccb->gc_service = service;
            gccb->gc_flags = GDT_GCF_SCREEN;
            FUNC11(gccb->gc_cmd + GDT_CMD_COMMANDINDEX,
                      gccb->gc_cmd_index);
            FUNC10(gccb->gc_cmd + GDT_CMD_OPCODE, GDT_READ);
            FUNC11(gccb->gc_cmd + GDT_CMD_UNION + GDT_SCREEN_MSG_HANDLE,
                      gccb->gc_scratch[GDT_SCR_MSG_HANDLE]);
            FUNC11(gccb->gc_cmd + GDT_CMD_UNION + GDT_SCREEN_MSG_ADDR,
                      gccb->gc_scratch_busbase);
            gdt->sc_set_sema0(gdt);
            gdt->sc_cmd_off = 0;
            gccb->gc_cmd_len = FUNC15(GDT_CMD_UNION + GDT_SCREEN_SZ, 
                                      sizeof(u_int32_t));
            gdt->sc_cmd_cnt = 0;
            gdt->sc_copy_cmd(gdt, gccb);
            gdt->sc_release_event(gdt);
            return (0);
        }

        if (gccb->gc_scratch[GDT_SCR_MSG_ANSWER] && 
            FUNC9(gccb->gc_scratch + GDT_SCR_MSG_ALEN)) {
            /* default answers (getchar() not possible) */
            if (FUNC9(gccb->gc_scratch + GDT_SCR_MSG_ALEN) == 1) {
                FUNC11(gccb->gc_scratch + GDT_SCR_MSG_ALEN, 0);
                FUNC11(gccb->gc_scratch + GDT_SCR_MSG_LEN, 1);
                gccb->gc_scratch[GDT_SCR_MSG_TEXT] = 0;
            } else {
                FUNC11(gccb->gc_scratch + GDT_SCR_MSG_ALEN, 
                          FUNC9(gccb->gc_scratch + GDT_SCR_MSG_ALEN) - 2);
                FUNC11(gccb->gc_scratch + GDT_SCR_MSG_LEN, 2);
                gccb->gc_scratch[GDT_SCR_MSG_TEXT] = 1;
                gccb->gc_scratch[GDT_SCR_MSG_TEXT + 1] = 0;
            }
            gccb->gc_scratch[GDT_SCR_MSG_EXT] = 0;
            gccb->gc_scratch[GDT_SCR_MSG_ANSWER] = 0;
            while (gdt->sc_test_busy(gdt))
                FUNC0(1);
            FUNC6(gccb->gc_cmd, GDT_CMD_SZ);
            gccb = FUNC12(gdt);
            if (gccb == NULL) {
                FUNC8(gdt->sc_devnode, "No free command index found\n");
                return (1);
            }
            gccb->gc_service = service;
            gccb->gc_flags = GDT_GCF_SCREEN;
            FUNC11(gccb->gc_cmd + GDT_CMD_COMMANDINDEX,
                      gccb->gc_cmd_index);
            FUNC10(gccb->gc_cmd + GDT_CMD_OPCODE, GDT_WRITE);
            FUNC11(gccb->gc_cmd + GDT_CMD_UNION + GDT_SCREEN_MSG_HANDLE,
                      gccb->gc_scratch[GDT_SCR_MSG_HANDLE]);
            FUNC11(gccb->gc_cmd + GDT_CMD_UNION + GDT_SCREEN_MSG_ADDR,
                      gccb->gc_scratch_busbase);
            gdt->sc_set_sema0(gdt);
            gdt->sc_cmd_off = 0;
            gccb->gc_cmd_len = FUNC15(GDT_CMD_UNION + GDT_SCREEN_SZ, 
                                      sizeof(u_int32_t));
            gdt->sc_cmd_cnt = 0;
            gdt->sc_copy_cmd(gdt, gccb);
            gdt->sc_release_event(gdt);
            return (0);
        }
        FUNC14("\n");
        return (0);
    } else {
	FUNC7(&gccb->gc_timeout);
        if (gdt->sc_status == GDT_S_BSY) {
            FUNC1(GDT_D_DEBUG, ("gdt_sync_event(%p) gccb %p busy\n", 
                                      gdt, gccb));
            FUNC2(&gdt->sc_ccb_queue, &ccb->ccb_h, sim_links.tqe);
            ++gdt_stat.req_queue_act;
            if (gdt_stat.req_queue_act > gdt_stat.req_queue_max)
                gdt_stat.req_queue_max = gdt_stat.req_queue_act;
            return (2);
        }

        FUNC4(gdt->sc_buffer_dmat, gccb->gc_dmamap, 
            (ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN ?
            BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE);
        FUNC5(gdt->sc_buffer_dmat, gccb->gc_dmamap);

        ccb->csio.resid = 0;
        if (gdt->sc_status == GDT_S_OK) {
            ccb->ccb_h.status |= CAM_REQ_CMP;
            ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
        } else {
            /* error */
            if (gccb->gc_service == GDT_CACHESERVICE) {
                struct scsi_sense_data *sense;

                ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR | CAM_AUTOSNS_VALID;
                ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
                ccb->csio.scsi_status = SCSI_STATUS_CHECK_COND;
                FUNC6(&ccb->csio.sense_data, ccb->csio.sense_len);
                sense = &ccb->csio.sense_data;
                FUNC16(sense,
                                    /*sense_format*/ SSD_TYPE_NONE,
                                    /*current_error*/ 1,
                                    /*sense_key*/ SSD_KEY_NOT_READY,
                                    /*asc*/ 0x4,
                                    /*ascq*/ 0x01,
                                    SSD_ELEM_NONE);

                gdt->sc_dvr.size = sizeof(gdt->sc_dvr.eu.sync);
                gdt->sc_dvr.eu.sync.ionode  = gdt->sc_hanum;
                gdt->sc_dvr.eu.sync.service = service;
                gdt->sc_dvr.eu.sync.status  = gdt->sc_status;
                gdt->sc_dvr.eu.sync.info    = gdt->sc_info;
                gdt->sc_dvr.eu.sync.hostdrive = ccb->ccb_h.target_id;
                if (gdt->sc_status >= 0x8000)
                    FUNC13(GDT_ES_SYNC, 0, &gdt->sc_dvr);
                else
                    FUNC13(GDT_ES_SYNC, service, &gdt->sc_dvr);
            } else {
                /* raw service */
                if (gdt->sc_status != GDT_S_RAW_SCSI || gdt->sc_info >= 0x100) {
                    ccb->ccb_h.status = CAM_DEV_NOT_THERE;
                } else {
                    ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR|CAM_AUTOSNS_VALID;
                    ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
                    ccb->csio.scsi_status = gdt->sc_info;
                    FUNC3(gccb->gc_scratch, &ccb->csio.sense_data,
                          ccb->csio.sense_len);
                }
            }
        }
        --gdt_stat.io_count_act;
        FUNC25(ccb);
    }
    return (0);
}