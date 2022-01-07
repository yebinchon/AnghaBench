
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int func_code; void* status; } ;
struct TYPE_14__ {int version_num; int base_transfer_speed; int transport_version; int maxio; void* protocol_version; void* protocol; void* transport; int dev_name; int hba_vid; int sim_vid; int initiator_id; int bus_id; int unit_number; int max_lun; int max_target; int hba_eng_cnt; int hba_misc; int target_sprt; int hba_inquiry; } ;
struct TYPE_16__ {union ccb* block_size; } ;
struct TYPE_11__ {int flags; int valid; } ;
struct TYPE_12__ {TYPE_3__ scsi; } ;
struct TYPE_9__ {int flags; int valid; } ;
struct TYPE_10__ {TYPE_1__ spi; } ;
struct TYPE_13__ {int transport_version; TYPE_4__ proto_specific; TYPE_2__ xport_specific; void* transport; void* protocol_version; void* protocol; } ;
union ccb {TYPE_7__ ccb_h; TYPE_6__ cpi; TYPE_8__ ccg; TYPE_5__ cts; } ;
struct tws_softc {int dummy; } ;
struct cam_sim {TYPE_7__ ccb_h; TYPE_6__ cpi; TYPE_8__ ccg; TYPE_5__ cts; } ;


 void* CAM_FUNC_NOTAVAIL ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 void* CAM_UA_ABORT ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_DISC ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 void* PROTO_SCSI ;
 void* SCSI_REV_2 ;
 int SIM_IDLEN ;
 int TWS_MAX_IO_SIZE ;
 int TWS_MAX_NUM_LUNS ;
 int TWS_MAX_NUM_UNITS ;
 int TWS_SCSI_INITIATOR_ID ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,union ccb*,union ccb*) ;
 void* XPORT_SPI ;







 int cam_calc_geometry (TYPE_8__*,int) ;
 int cam_sim_bus (union ccb*) ;
 char* cam_sim_name (union ccb*) ;
 scalar_t__ cam_sim_softc (union ccb*) ;
 int cam_sim_unit (union ccb*) ;
 int strlcpy (int ,char*,int ) ;
 int tws_execute_scsi (struct tws_softc*,union ccb*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
tws_action(struct cam_sim *sim, union ccb *ccb)
{
    struct tws_softc *sc = (struct tws_softc *)cam_sim_softc(sim);


    switch( ccb->ccb_h.func_code ) {
        case 129:
        {
            if ( tws_execute_scsi(sc, ccb) )
                TWS_TRACE_DEBUG(sc, "execute scsi failed", 0, 0);
            break;
        }
        case 134:
        {
            TWS_TRACE_DEBUG(sc, "abort i/o", 0, 0);
            ccb->ccb_h.status = CAM_UA_ABORT;
            xpt_done(ccb);
            break;
        }
        case 130:
        {
            TWS_TRACE_DEBUG(sc, "reset bus", sim, ccb);
            break;
        }
        case 128:
        {
            TWS_TRACE_DEBUG(sc, "set tran settings", sim, ccb);
            ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
            xpt_done(ccb);

            break;
        }
        case 132:
        {
            TWS_TRACE_DEBUG(sc, "get tran settings", sim, ccb);

            ccb->cts.protocol = PROTO_SCSI;
            ccb->cts.protocol_version = SCSI_REV_2;
            ccb->cts.transport = XPORT_SPI;
            ccb->cts.transport_version = 2;

            ccb->cts.xport_specific.spi.valid = CTS_SPI_VALID_DISC;
            ccb->cts.xport_specific.spi.flags = CTS_SPI_FLAGS_DISC_ENB;
            ccb->cts.proto_specific.scsi.valid = CTS_SCSI_VALID_TQ;
            ccb->cts.proto_specific.scsi.flags = CTS_SCSI_FLAGS_TAG_ENB;
            ccb->ccb_h.status = CAM_REQ_CMP;
            xpt_done(ccb);

            break;
        }
        case 133:
        {
            TWS_TRACE_DEBUG(sc, "calc geometry(ccb,block-size)", ccb,
                                          ccb->ccg.block_size);
            cam_calc_geometry(&ccb->ccg, 1 );
            xpt_done(ccb);

            break;
        }
        case 131:
        {
            TWS_TRACE_DEBUG(sc, "path inquiry", sim, ccb);
            ccb->cpi.version_num = 1;
            ccb->cpi.hba_inquiry = 0;
            ccb->cpi.target_sprt = 0;
            ccb->cpi.hba_misc = 0;
            ccb->cpi.hba_eng_cnt = 0;
            ccb->cpi.max_target = TWS_MAX_NUM_UNITS;
            ccb->cpi.max_lun = TWS_MAX_NUM_LUNS - 1;
            ccb->cpi.unit_number = cam_sim_unit(sim);
            ccb->cpi.bus_id = cam_sim_bus(sim);
            ccb->cpi.initiator_id = TWS_SCSI_INITIATOR_ID;
            ccb->cpi.base_transfer_speed = 6000000;
            strlcpy(ccb->cpi.sim_vid, "FreeBSD", SIM_IDLEN);
            strlcpy(ccb->cpi.hba_vid, "3ware", HBA_IDLEN);
            strlcpy(ccb->cpi.dev_name, cam_sim_name(sim), DEV_IDLEN);
            ccb->cpi.transport = XPORT_SPI;
            ccb->cpi.transport_version = 2;
            ccb->cpi.protocol = PROTO_SCSI;
            ccb->cpi.protocol_version = SCSI_REV_2;
            ccb->cpi.maxio = TWS_MAX_IO_SIZE;
            ccb->ccb_h.status = CAM_REQ_CMP;
            xpt_done(ccb);

            break;
        }
        default:
            TWS_TRACE_DEBUG(sc, "default", sim, ccb);
            ccb->ccb_h.status = CAM_REQ_INVALID;
            xpt_done(ccb);
            break;
    }
}
