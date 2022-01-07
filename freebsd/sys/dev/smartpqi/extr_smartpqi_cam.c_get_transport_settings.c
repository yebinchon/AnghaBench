
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pqisrc_softstate {int dummy; } ;
struct ccb_trans_settings_spi {int flags; int valid; } ;
struct ccb_trans_settings_scsi {int flags; int valid; } ;
struct ccb_trans_settings_sas {int valid; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_5__ {struct ccb_trans_settings_spi spi; struct ccb_trans_settings_sas sas; } ;
struct TYPE_4__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {int transport_version; TYPE_3__ ccb_h; int transport; int protocol_version; int protocol; TYPE_2__ xport_specific; TYPE_1__ proto_specific; } ;


 int CAM_REQ_CMP ;
 int CTS_SAS_VALID_SPEED ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_DISC ;
 int DBG_FUNC (char*) ;
 int PROTO_SCSI ;
 int SCSI_REV_SPC4 ;
 int XPORT_SPI ;

__attribute__((used)) static void get_transport_settings(struct pqisrc_softstate *softs,
  struct ccb_trans_settings *cts)
{
 struct ccb_trans_settings_scsi *scsi = &cts->proto_specific.scsi;
 struct ccb_trans_settings_sas *sas = &cts->xport_specific.sas;
 struct ccb_trans_settings_spi *spi = &cts->xport_specific.spi;

 DBG_FUNC("IN\n");

 cts->protocol = PROTO_SCSI;
 cts->protocol_version = SCSI_REV_SPC4;
 cts->transport = XPORT_SPI;
 cts->transport_version = 2;
 spi->valid = CTS_SPI_VALID_DISC;
 spi->flags = CTS_SPI_FLAGS_DISC_ENB;
 scsi->valid = CTS_SCSI_VALID_TQ;
 scsi->flags = CTS_SCSI_FLAGS_TAG_ENB;
 sas->valid = CTS_SAS_VALID_SPEED;
 cts->ccb_h.status = CAM_REQ_CMP;

 DBG_FUNC("OUT\n");
}
