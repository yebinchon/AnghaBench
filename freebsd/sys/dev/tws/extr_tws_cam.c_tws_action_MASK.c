#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int func_code; void* status; } ;
struct TYPE_14__ {int version_num; int base_transfer_speed; int transport_version; int /*<<< orphan*/  maxio; void* protocol_version; void* protocol; void* transport; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  hba_vid; int /*<<< orphan*/  sim_vid; int /*<<< orphan*/  initiator_id; int /*<<< orphan*/  bus_id; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_target; int /*<<< orphan*/  hba_eng_cnt; int /*<<< orphan*/  hba_misc; int /*<<< orphan*/  target_sprt; int /*<<< orphan*/  hba_inquiry; } ;
struct TYPE_16__ {union ccb* block_size; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  valid; } ;
struct TYPE_12__ {TYPE_3__ scsi; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  valid; } ;
struct TYPE_10__ {TYPE_1__ spi; } ;
struct TYPE_13__ {int transport_version; TYPE_4__ proto_specific; TYPE_2__ xport_specific; void* transport; void* protocol_version; void* protocol; } ;
union ccb {TYPE_7__ ccb_h; TYPE_6__ cpi; TYPE_8__ ccg; TYPE_5__ cts; } ;
struct tws_softc {int dummy; } ;
struct cam_sim {TYPE_7__ ccb_h; TYPE_6__ cpi; TYPE_8__ ccg; TYPE_5__ cts; } ;

/* Variables and functions */
 void* CAM_FUNC_NOTAVAIL ; 
 void* CAM_REQ_CMP ; 
 void* CAM_REQ_INVALID ; 
 void* CAM_UA_ABORT ; 
 int /*<<< orphan*/  CTS_SCSI_FLAGS_TAG_ENB ; 
 int /*<<< orphan*/  CTS_SCSI_VALID_TQ ; 
 int /*<<< orphan*/  CTS_SPI_FLAGS_DISC_ENB ; 
 int /*<<< orphan*/  CTS_SPI_VALID_DISC ; 
 int /*<<< orphan*/  DEV_IDLEN ; 
 int /*<<< orphan*/  HBA_IDLEN ; 
 void* PROTO_SCSI ; 
 void* SCSI_REV_2 ; 
 int /*<<< orphan*/  SIM_IDLEN ; 
 int /*<<< orphan*/  TWS_MAX_IO_SIZE ; 
 int /*<<< orphan*/  TWS_MAX_NUM_LUNS ; 
 int /*<<< orphan*/  TWS_MAX_NUM_UNITS ; 
 int /*<<< orphan*/  TWS_SCSI_INITIATOR_ID ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,union ccb*,union ccb*) ; 
 void* XPORT_SPI ; 
#define  XPT_ABORT 134 
#define  XPT_CALC_GEOMETRY 133 
#define  XPT_GET_TRAN_SETTINGS 132 
#define  XPT_PATH_INQ 131 
#define  XPT_RESET_BUS 130 
#define  XPT_SCSI_IO 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 char* FUNC3 (union ccb*) ; 
 scalar_t__ FUNC4 (union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tws_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(struct cam_sim *sim, union ccb *ccb)
{
    struct tws_softc *sc = (struct tws_softc *)FUNC4(sim);


    switch( ccb->ccb_h.func_code ) {
        case XPT_SCSI_IO:   
        {
            if ( FUNC7(sc, ccb) ) 
                FUNC0(sc, "execute scsi failed", 0, 0);
            break;
        }
        case XPT_ABORT:
        {
            FUNC0(sc, "abort i/o", 0, 0);
            ccb->ccb_h.status = CAM_UA_ABORT;
            FUNC8(ccb);
            break;
        }
        case XPT_RESET_BUS:
        {
            FUNC0(sc, "reset bus", sim, ccb);
            break;
        }
        case XPT_SET_TRAN_SETTINGS:
        {
            FUNC0(sc, "set tran settings", sim, ccb);
            ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
            FUNC8(ccb);

            break;
        }
        case XPT_GET_TRAN_SETTINGS:
        {
            FUNC0(sc, "get tran settings", sim, ccb);

            ccb->cts.protocol = PROTO_SCSI;
            ccb->cts.protocol_version = SCSI_REV_2;
            ccb->cts.transport = XPORT_SPI;
            ccb->cts.transport_version = 2;

            ccb->cts.xport_specific.spi.valid = CTS_SPI_VALID_DISC;
            ccb->cts.xport_specific.spi.flags = CTS_SPI_FLAGS_DISC_ENB;
            ccb->cts.proto_specific.scsi.valid = CTS_SCSI_VALID_TQ;
            ccb->cts.proto_specific.scsi.flags = CTS_SCSI_FLAGS_TAG_ENB;
            ccb->ccb_h.status = CAM_REQ_CMP;
            FUNC8(ccb);

            break;
        }
        case XPT_CALC_GEOMETRY:
        {
            FUNC0(sc, "calc geometry(ccb,block-size)", ccb, 
                                          ccb->ccg.block_size);
            FUNC1(&ccb->ccg, 1/* extended */);
            FUNC8(ccb);

            break;
        }
        case XPT_PATH_INQ:
        {
            FUNC0(sc, "path inquiry", sim, ccb);
            ccb->cpi.version_num = 1;
            ccb->cpi.hba_inquiry = 0;
            ccb->cpi.target_sprt = 0;
            ccb->cpi.hba_misc = 0;
            ccb->cpi.hba_eng_cnt = 0;
            ccb->cpi.max_target = TWS_MAX_NUM_UNITS;
            ccb->cpi.max_lun = TWS_MAX_NUM_LUNS - 1;
            ccb->cpi.unit_number = FUNC5(sim);
            ccb->cpi.bus_id = FUNC2(sim);
            ccb->cpi.initiator_id = TWS_SCSI_INITIATOR_ID;
            ccb->cpi.base_transfer_speed = 6000000;
            FUNC6(ccb->cpi.sim_vid, "FreeBSD", SIM_IDLEN);
            FUNC6(ccb->cpi.hba_vid, "3ware", HBA_IDLEN);
            FUNC6(ccb->cpi.dev_name, FUNC3(sim), DEV_IDLEN);
            ccb->cpi.transport = XPORT_SPI;
            ccb->cpi.transport_version = 2;
            ccb->cpi.protocol = PROTO_SCSI;
            ccb->cpi.protocol_version = SCSI_REV_2;
            ccb->cpi.maxio = TWS_MAX_IO_SIZE;
            ccb->ccb_h.status = CAM_REQ_CMP;
            FUNC8(ccb);

            break;
        }
        default:
            FUNC0(sc, "default", sim, ccb);
            ccb->ccb_h.status = CAM_REQ_INVALID;
            FUNC8(ccb);
            break;
    }
}