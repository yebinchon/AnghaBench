
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; int status; int target_lun; int target_id; scalar_t__ ccb_sim_ptr; } ;
struct TYPE_4__ {int cdb_bytes; } ;
struct TYPE_5__ {int dxfer_len; int cdb_len; TYPE_1__ cdb_io; } ;
union ccb {TYPE_3__ ccb_h; TYPE_2__ csio; } ;
typedef int u_int32_t ;
struct scsi_sense_data {int dummy; } ;
struct gdt_softc {scalar_t__ sc_cmd_off; scalar_t__ sc_ic_all_size; scalar_t__ sc_cmd_cnt; int sc_buffer_dmat; int (* sc_set_sema0 ) (struct gdt_softc*) ;int sc_devnode; } ;
struct gdt_ccb {int gc_cmd_index; int gc_scratch_busbase; union ccb* gc_ccb; int gc_dmamap; int * gc_cmd; int gc_flags; int gc_service; } ;
struct cam_sim {int dummy; } ;


 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_RELEASE_SIMQ ;
 int EINPROGRESS ;
 int GDT_CMD_COMMANDINDEX ;
 int GDT_CMD_OPCODE ;
 int GDT_CMD_SZ ;
 int GDT_CMD_UNION ;
 int GDT_DATA_IN ;
 int GDT_DATA_OUT ;
 scalar_t__ GDT_DPMEM_COMMAND_OFFSET ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_CMD ;
 int GDT_D_INVALID ;
 int GDT_GCF_SCSI ;
 int GDT_RAW_BUS ;
 int GDT_RAW_CLEN ;
 int GDT_RAW_CMD ;
 int GDT_RAW_DIRECTION ;
 int GDT_RAW_LUN ;
 int GDT_RAW_SDLEN ;
 int GDT_RAW_SENSE_DATA ;
 int GDT_RAW_SENSE_LEN ;
 scalar_t__ GDT_RAW_SZ ;
 int GDT_RAW_TARGET ;
 int GDT_SCSIRAWSERVICE ;
 int GDT_WRITE ;
 int bcopy (int ,int *,int) ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct gdt_ccb*,int ) ;
 int bzero (int *,int ) ;
 int cam_sim_bus (struct cam_sim*) ;
 int device_get_nameunit (int ) ;
 int gdt_enc16 (int *,int ) ;
 int gdt_enc32 (int *,int) ;
 struct gdt_ccb* gdt_get_ccb (struct gdt_softc*) ;
 int gdtexecuteccb ;
 scalar_t__ roundup (scalar_t__,int) ;
 int stub1 (struct gdt_softc*) ;
 int xpt_freeze_simq (struct cam_sim*,int) ;

__attribute__((used)) static struct gdt_ccb *
gdt_raw_cmd(struct gdt_softc *gdt, union ccb *ccb)
{
    struct gdt_ccb *gccb;
    struct cam_sim *sim;
    int error;

    GDT_DPRINTF(GDT_D_CMD, ("gdt_raw_cmd(%p, %p)\n", gdt, ccb));

    if (roundup(GDT_CMD_UNION + GDT_RAW_SZ, sizeof(u_int32_t)) +
        gdt->sc_cmd_off + GDT_DPMEM_COMMAND_OFFSET >
        gdt->sc_ic_all_size) {
        GDT_DPRINTF(GDT_D_INVALID, ("%s: gdt_raw_cmd(): DPMEM overflow\n",
  device_get_nameunit(gdt->sc_devnode)));
        return (((void*)0));
    }

    gccb = gdt_get_ccb(gdt);
    if (gccb == ((void*)0)) {
        GDT_DPRINTF(GDT_D_INVALID, ("%s: No free command index found\n",
  device_get_nameunit(gdt->sc_devnode)));
        return (gccb);
    }
    bzero(gccb->gc_cmd, GDT_CMD_SZ);
    sim = (struct cam_sim *)ccb->ccb_h.ccb_sim_ptr;
    gccb->gc_ccb = ccb;
    gccb->gc_service = GDT_SCSIRAWSERVICE;
    gccb->gc_flags = GDT_GCF_SCSI;

    if (gdt->sc_cmd_cnt == 0)
        gdt->sc_set_sema0(gdt);
    gdt_enc32(gccb->gc_cmd + GDT_CMD_COMMANDINDEX,
              gccb->gc_cmd_index);
    gdt_enc16(gccb->gc_cmd + GDT_CMD_OPCODE, GDT_WRITE);

    gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_RAW_DIRECTION,
              (ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN ?
              GDT_DATA_IN : GDT_DATA_OUT);
    gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_RAW_SDLEN,
              ccb->csio.dxfer_len);
    gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_RAW_CLEN,
              ccb->csio.cdb_len);
    bcopy(ccb->csio.cdb_io.cdb_bytes, gccb->gc_cmd + GDT_CMD_UNION + GDT_RAW_CMD,
          ccb->csio.cdb_len);
    gccb->gc_cmd[GDT_CMD_UNION + GDT_RAW_TARGET] =
        ccb->ccb_h.target_id;
    gccb->gc_cmd[GDT_CMD_UNION + GDT_RAW_LUN] =
        ccb->ccb_h.target_lun;
    gccb->gc_cmd[GDT_CMD_UNION + GDT_RAW_BUS] =
        cam_sim_bus(sim);
    gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_RAW_SENSE_LEN,
              sizeof(struct scsi_sense_data));
    gdt_enc32(gccb->gc_cmd + GDT_CMD_UNION + GDT_RAW_SENSE_DATA,
              gccb->gc_scratch_busbase);

    error = bus_dmamap_load_ccb(gdt->sc_buffer_dmat,
           gccb->gc_dmamap,
           ccb,
           gdtexecuteccb,
           gccb, 0);
    if (error == EINPROGRESS) {
        xpt_freeze_simq(sim, 1);
        gccb->gc_ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
    }

    return (gccb);
}
