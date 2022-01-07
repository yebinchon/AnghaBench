
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int status; int path; int timeout; int func_code; } ;
struct TYPE_9__ {int error_code; } ;
struct TYPE_6__ {int * cdb_bytes; } ;
struct ccb_scsiio {int sense_len; TYPE_4__ sense_data; scalar_t__ data_ptr; TYPE_1__ cdb_io; int resid; } ;
union ccb {TYPE_5__ ccb_h; struct ccb_scsiio csio; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int* cmd_data; } ;
struct TYPE_7__ {int opcode; int length; } ;
struct umass_softc {int sc_quirks; TYPE_3__ sc_transfer; TYPE_2__ cam_scsi_sense; int sc_udev; } ;
struct scsi_vpd_supported_page_list {size_t length; int * list; } ;
struct scsi_read_capacity_data {int addr; } ;


 int CAM_DEV_QFRZN ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int DIR_IN ;
 int DPRINTF (struct umass_softc*,int ,char*,int ) ;
 int FORCE_SHORT_INQUIRY ;
 int INQUIRY ;
 int READ_CAPACITY ;
 int READ_CAPACITY_OFFBY1 ;
 int SHORT_INQUIRY_LENGTH ;
 int SI_EVPD ;



 int SVPD_SUPPORTED_PAGES_SIZE ;
 int SVPD_SUPPORTED_PAGE_LIST ;
 int SVPD_UNIT_SERIAL_NUMBER ;
 int UDMASS_SCSI ;
 int XPT_SCSI_IO ;
 int scsi_4btoul (int ) ;
 int scsi_ulto4b (int ,int ) ;
 int umass_cam_sense_cb ;
 int umass_command_start (struct umass_softc*,int ,int *,int ,int ,int *,union ccb*) ;
 int umass_std_transform (struct umass_softc*,union ccb*,int *,int) ;
 char* usb_get_serial (int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
umass_cam_cb(struct umass_softc *sc, union ccb *ccb, uint32_t residue,
    uint8_t status)
{
 ccb->csio.resid = residue;

 switch (status) {
 case 129:
  ccb->ccb_h.status = CAM_REQ_CMP;
  if ((sc->sc_quirks & READ_CAPACITY_OFFBY1) &&
      (ccb->ccb_h.func_code == XPT_SCSI_IO) &&
      (ccb->csio.cdb_io.cdb_bytes[0] == READ_CAPACITY)) {
   struct scsi_read_capacity_data *rcap;
   uint32_t maxsector;

   rcap = (void *)(ccb->csio.data_ptr);
   maxsector = scsi_4btoul(rcap->addr) - 1;
   scsi_ulto4b(maxsector, rcap->addr);
  }






  if (ccb->ccb_h.func_code == XPT_SCSI_IO &&
      sc->sc_transfer.cmd_data[0] == INQUIRY &&
      (sc->sc_transfer.cmd_data[1] & SI_EVPD) &&
      sc->sc_transfer.cmd_data[2] == SVPD_SUPPORTED_PAGE_LIST &&
      (usb_get_serial(sc->sc_udev)[0] != '\0')) {
   struct ccb_scsiio *csio;
   struct scsi_vpd_supported_page_list *page_list;

   csio = &ccb->csio;
   page_list = (struct scsi_vpd_supported_page_list *)csio->data_ptr;
   if (page_list->length + 1 < SVPD_SUPPORTED_PAGES_SIZE) {
    page_list->list[page_list->length] = SVPD_UNIT_SERIAL_NUMBER;
    page_list->length++;
   }
  }
  xpt_done(ccb);
  break;

 case 128:
 case 130:




  sc->cam_scsi_sense.length = ccb->csio.sense_len;

  DPRINTF(sc, UDMASS_SCSI, "Fetching %d bytes of "
      "sense data\n", ccb->csio.sense_len);

  if (umass_std_transform(sc, ccb, &sc->cam_scsi_sense.opcode,
      sizeof(sc->cam_scsi_sense))) {

   if ((sc->sc_quirks & FORCE_SHORT_INQUIRY) &&
       (sc->sc_transfer.cmd_data[0] == INQUIRY)) {
    ccb->csio.sense_len = SHORT_INQUIRY_LENGTH;
   }
   umass_command_start(sc, DIR_IN, &ccb->csio.sense_data.error_code,
       ccb->csio.sense_len, ccb->ccb_h.timeout,
       &umass_cam_sense_cb, ccb);
  }
  break;

 default:





  xpt_freeze_devq(ccb->ccb_h.path, 1);
  ccb->ccb_h.status = CAM_REQ_CMP_ERR | CAM_DEV_QFRZN;
  xpt_done(ccb);
  break;
 }
}
