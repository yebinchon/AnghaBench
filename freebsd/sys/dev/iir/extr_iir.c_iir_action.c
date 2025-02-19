
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_18__ {int target_id; int target_lun; void* status; int func_code; struct cam_sim* ccb_sim_ptr; } ;
struct TYPE_10__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int target_sprt; int max_lun; int bus_id; int initiator_id; int base_transfer_speed; int transport_version; TYPE_1__ ccb_h; void* protocol_version; void* protocol; void* transport; int dev_name; int hba_vid; int sim_vid; int unit_number; int max_target; int hba_eng_cnt; int hba_misc; } ;
struct ccb_calc_geometry {int heads; int secs_per_track; int cylinders; int volume_size; } ;
struct ccb_trans_settings_spi {int sync_period; int sync_offset; int valid; int bus_width; int flags; } ;
struct TYPE_14__ {struct ccb_trans_settings_spi spi; } ;
struct ccb_trans_settings_scsi {int valid; int flags; } ;
struct TYPE_13__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {int transport_version; int type; void* transport; void* protocol_version; void* protocol; TYPE_5__ xport_specific; TYPE_4__ proto_specific; } ;
struct TYPE_11__ {int * cdb_bytes; } ;
struct TYPE_12__ {TYPE_2__ cdb_io; } ;
union ccb {TYPE_9__ ccb_h; struct ccb_pathinq cpi; struct ccb_calc_geometry ccg; struct ccb_trans_settings cts; TYPE_3__ csio; } ;
typedef int u_int32_t ;
struct gdt_softc {int sc_virt_bus; int sc_class; int* sc_bus_id; int sc_vendor; TYPE_6__* sc_hdr; int sc_ccb_queue; int sc_lock; } ;
struct cam_sim {int dummy; } ;
struct TYPE_17__ {scalar_t__ io_count_act; scalar_t__ io_count_max; int req_queue_act; int req_queue_max; } ;
struct TYPE_16__ {int tqe; } ;
struct TYPE_15__ {int hd_heads; int hd_secs; } ;


 void* CAM_FUNC_NOTAVAIL ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_BUS_WIDTH ;
 int CTS_SPI_VALID_DISC ;
 int CTS_SPI_VALID_SYNC_OFFSET ;
 int CTS_SPI_VALID_SYNC_RATE ;
 int CTS_TYPE_USER_SETTINGS ;
 int DEV_IDLEN ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_CMD ;
 int GDT_D_INVALID ;
 int GDT_FC ;
 int GDT_MAXID ;
 int GDT_MAXID_FC ;
 int GDT_MAX_HDRIVES ;
 int HBA_IDLEN ;
 int INTEL_VENDOR_ID_IIR ;
 int MA_OWNED ;
 int MSG_EXT_WDTR_BUS_16_BIT ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_16 ;
 void* PROTO_SCSI ;
 void* SCSI_REV_2 ;
 int SIM_IDLEN ;
 int TAILQ_INSERT_TAIL (int *,TYPE_9__*,int ) ;
 void* XPORT_SPI ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int gdt_next (struct gdt_softc*) ;
 TYPE_8__ gdt_stat ;
 int mtx_assert (int *,int ) ;
 TYPE_7__ sim_links ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
iir_action( struct cam_sim *sim, union ccb *ccb )
{
    struct gdt_softc *gdt;
    int bus, target, lun;

    gdt = (struct gdt_softc *)cam_sim_softc( sim );
    mtx_assert(&gdt->sc_lock, MA_OWNED);
    ccb->ccb_h.ccb_sim_ptr = sim;
    bus = cam_sim_bus(sim);
    target = ccb->ccb_h.target_id;
    lun = ccb->ccb_h.target_lun;
    GDT_DPRINTF(GDT_D_CMD,
                ("iir_action(%p) func 0x%x cmd 0x%x bus %d target %d lun %d\n",
                 gdt, ccb->ccb_h.func_code, ccb->csio.cdb_io.cdb_bytes[0],
                 bus, target, lun));
    ++gdt_stat.io_count_act;
    if (gdt_stat.io_count_act > gdt_stat.io_count_max)
        gdt_stat.io_count_max = gdt_stat.io_count_act;

    switch (ccb->ccb_h.func_code) {
      case 130:
        TAILQ_INSERT_TAIL(&gdt->sc_ccb_queue, &ccb->ccb_h, sim_links.tqe);
        ++gdt_stat.req_queue_act;
        if (gdt_stat.req_queue_act > gdt_stat.req_queue_max)
            gdt_stat.req_queue_max = gdt_stat.req_queue_act;
        gdt_next(gdt);
        break;
      case 131:
      case 136:

        ccb->ccb_h.status = CAM_REQ_INVALID;
        --gdt_stat.io_count_act;
        xpt_done(ccb);
        break;
      case 129:
        ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
        --gdt_stat.io_count_act;
        xpt_done(ccb);
        break;
      case 134:

          {
              struct ccb_trans_settings *cts = &ccb->cts;
              struct ccb_trans_settings_scsi *scsi = &cts->proto_specific.scsi;
              struct ccb_trans_settings_spi *spi = &cts->xport_specific.spi;

              cts->protocol = PROTO_SCSI;
              cts->protocol_version = SCSI_REV_2;
              cts->transport = XPORT_SPI;
              cts->transport_version = 2;

              if (cts->type == CTS_TYPE_USER_SETTINGS) {
    spi->flags = CTS_SPI_FLAGS_DISC_ENB;
                  scsi->flags = CTS_SCSI_FLAGS_TAG_ENB;
                  spi->bus_width = MSG_EXT_WDTR_BUS_16_BIT;
                  spi->sync_period = 25;
                  if (spi->sync_period != 0)
                      spi->sync_offset = 15;

                  spi->valid = CTS_SPI_VALID_SYNC_RATE
                      | CTS_SPI_VALID_SYNC_OFFSET
                      | CTS_SPI_VALID_BUS_WIDTH
                      | CTS_SPI_VALID_DISC;
                  scsi->valid = CTS_SCSI_VALID_TQ;
                  ccb->ccb_h.status = CAM_REQ_CMP;
              } else {
                  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
              }
              --gdt_stat.io_count_act;
              xpt_done(ccb);
              break;
          }
      case 135:
          {
              struct ccb_calc_geometry *ccg;
              u_int32_t secs_per_cylinder;

              ccg = &ccb->ccg;
              ccg->heads = gdt->sc_hdr[target].hd_heads;
              ccg->secs_per_track = gdt->sc_hdr[target].hd_secs;
              secs_per_cylinder = ccg->heads * ccg->secs_per_track;
              ccg->cylinders = ccg->volume_size / secs_per_cylinder;
              ccb->ccb_h.status = CAM_REQ_CMP;
              --gdt_stat.io_count_act;
              xpt_done(ccb);
              break;
          }
      case 132:
          {

              ccb->ccb_h.status = CAM_REQ_CMP;
              --gdt_stat.io_count_act;
              xpt_done(ccb);
              break;
          }
      case 128:

        ccb->ccb_h.status = CAM_REQ_INVALID;
        --gdt_stat.io_count_act;
        xpt_done(ccb);
        break;
      case 133:
          {
              struct ccb_pathinq *cpi = &ccb->cpi;

              cpi->version_num = 1;
              cpi->hba_inquiry = PI_SDTR_ABLE|PI_TAG_ABLE;
              cpi->hba_inquiry |= PI_WIDE_16;
              cpi->target_sprt = 1;
              cpi->hba_misc = 0;
              cpi->hba_eng_cnt = 0;
              if (bus == gdt->sc_virt_bus)
                  cpi->max_target = GDT_MAX_HDRIVES - 1;
              else if (gdt->sc_class & GDT_FC)
                  cpi->max_target = GDT_MAXID_FC - 1;
              else
                  cpi->max_target = GDT_MAXID - 1;
              cpi->max_lun = 7;
              cpi->unit_number = cam_sim_unit(sim);
              cpi->bus_id = bus;
              cpi->initiator_id =
                  (bus == gdt->sc_virt_bus ? 127 : gdt->sc_bus_id[bus]);
              cpi->base_transfer_speed = 3300;
              strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
              if (gdt->sc_vendor == INTEL_VENDOR_ID_IIR)
                  strlcpy(cpi->hba_vid, "Intel Corp.", HBA_IDLEN);
              else
                  strlcpy(cpi->hba_vid, "ICP vortex ", HBA_IDLEN);
              strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
              cpi->transport = XPORT_SPI;
              cpi->transport_version = 2;
              cpi->protocol = PROTO_SCSI;
              cpi->protocol_version = SCSI_REV_2;
              cpi->ccb_h.status = CAM_REQ_CMP;
              --gdt_stat.io_count_act;
              xpt_done(ccb);
              break;
          }
      default:
        GDT_DPRINTF(GDT_D_INVALID, ("gdt_next(%p) cmd 0x%x invalid\n",
                                    gdt, ccb->ccb_h.func_code));
        ccb->ccb_h.status = CAM_REQ_INVALID;
        --gdt_stat.io_count_act;
        xpt_done(ccb);
        break;
    }
}
