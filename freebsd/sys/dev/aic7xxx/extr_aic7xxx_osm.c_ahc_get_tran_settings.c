
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ccb_trans_settings_spi {int valid; int ppr_options; int bus_width; int sync_offset; int sync_period; int flags; } ;
struct ccb_trans_settings_scsi {scalar_t__ valid; int flags; } ;
struct TYPE_6__ {int status; int target_lun; int target_id; } ;
struct TYPE_5__ {struct ccb_trans_settings_spi spi; } ;
struct TYPE_4__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {scalar_t__ type; TYPE_3__ ccb_h; int transport; int protocol; int transport_version; int protocol_version; TYPE_2__ xport_specific; TYPE_1__ proto_specific; } ;
struct ahc_transinfo {int ppr_options; int width; int offset; int period; int transport_version; int protocol_version; } ;
struct ahc_tmode_tstate {int discenable; int tagenable; } ;
struct ahc_softc {int user_discenable; int user_tagenable; } ;
struct ahc_initiator_tinfo {struct ahc_transinfo user; struct ahc_transinfo curr; } ;
struct ahc_devinfo {int target_mask; int target; int our_scsiid; int channel; } ;


 int CAM_LUN_WILDCARD ;
 int CAM_REQ_CMP ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 scalar_t__ CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_BUS_WIDTH ;
 int CTS_SPI_VALID_DISC ;
 int CTS_SPI_VALID_PPR_OPTIONS ;
 int CTS_SPI_VALID_SYNC_OFFSET ;
 int CTS_SPI_VALID_SYNC_RATE ;
 scalar_t__ CTS_TYPE_CURRENT_SETTINGS ;
 scalar_t__ CTS_TYPE_USER_SETTINGS ;
 int PROTO_SCSI ;
 int ROLE_UNKNOWN ;
 int XPORT_SPI ;
 int ahc_compile_devinfo (struct ahc_devinfo*,int,int ,int ,char,int ) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,int ,int ,int ,struct ahc_tmode_tstate**) ;

__attribute__((used)) static void
ahc_get_tran_settings(struct ahc_softc *ahc, int our_id, char channel,
        struct ccb_trans_settings *cts)
{
 struct ahc_devinfo devinfo;
 struct ccb_trans_settings_scsi *scsi;
 struct ccb_trans_settings_spi *spi;
 struct ahc_initiator_tinfo *targ_info;
 struct ahc_tmode_tstate *tstate;
 struct ahc_transinfo *tinfo;

 scsi = &cts->proto_specific.scsi;
 spi = &cts->xport_specific.spi;
 ahc_compile_devinfo(&devinfo, our_id,
       cts->ccb_h.target_id,
       cts->ccb_h.target_lun,
       channel, ROLE_UNKNOWN);
 targ_info = ahc_fetch_transinfo(ahc, devinfo.channel,
     devinfo.our_scsiid,
     devinfo.target, &tstate);

 if (cts->type == CTS_TYPE_CURRENT_SETTINGS)
  tinfo = &targ_info->curr;
 else
  tinfo = &targ_info->user;

 scsi->flags &= ~CTS_SCSI_FLAGS_TAG_ENB;
 spi->flags &= ~CTS_SPI_FLAGS_DISC_ENB;
 if (cts->type == CTS_TYPE_USER_SETTINGS) {
  if ((ahc->user_discenable & devinfo.target_mask) != 0)
   spi->flags |= CTS_SPI_FLAGS_DISC_ENB;

  if ((ahc->user_tagenable & devinfo.target_mask) != 0)
   scsi->flags |= CTS_SCSI_FLAGS_TAG_ENB;
 } else {
  if ((tstate->discenable & devinfo.target_mask) != 0)
   spi->flags |= CTS_SPI_FLAGS_DISC_ENB;

  if ((tstate->tagenable & devinfo.target_mask) != 0)
   scsi->flags |= CTS_SCSI_FLAGS_TAG_ENB;
 }
 cts->protocol_version = tinfo->protocol_version;
 cts->transport_version = tinfo->transport_version;

 spi->sync_period = tinfo->period;
 spi->sync_offset = tinfo->offset;
 spi->bus_width = tinfo->width;
 spi->ppr_options = tinfo->ppr_options;

 cts->protocol = PROTO_SCSI;
 cts->transport = XPORT_SPI;
 spi->valid = CTS_SPI_VALID_SYNC_RATE
     | CTS_SPI_VALID_SYNC_OFFSET
     | CTS_SPI_VALID_BUS_WIDTH
     | CTS_SPI_VALID_PPR_OPTIONS;

 if (cts->ccb_h.target_lun != CAM_LUN_WILDCARD) {
  scsi->valid = CTS_SCSI_VALID_TQ;
  spi->valid |= CTS_SPI_VALID_DISC;
 } else {
  scsi->valid = 0;
 }

 cts->ccb_h.status = CAM_REQ_CMP;
}
