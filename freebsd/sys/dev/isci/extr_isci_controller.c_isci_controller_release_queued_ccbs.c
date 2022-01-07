
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
typedef int uint8_t ;
struct ccb_hdr {int dummy; } ;
struct ISCI_REMOTE_DEVICE {scalar_t__ release_queued_ccb; union ccb* queued_ccb_in_progress; int queued_ccbs; } ;
struct ISCI_CONTROLLER {struct ISCI_REMOTE_DEVICE** remote_device; void* release_queued_ccbs; int lock; } ;


 void* FALSE ;
 int KASSERT (int ,char*) ;
 int SCI_MAX_REMOTE_DEVICES ;
 struct ccb_hdr* TAILQ_FIRST (int *) ;
 scalar_t__ TRUE ;
 int isci_io_request_execute_scsi_io (union ccb*,struct ISCI_CONTROLLER*) ;
 int isci_log_message (int,char*,char*,struct ccb_hdr*,int ) ;
 int mtx_owned (int *) ;
 int * scsiio_cdb_ptr (int *) ;

void
isci_controller_release_queued_ccbs(struct ISCI_CONTROLLER *controller)
{
 struct ISCI_REMOTE_DEVICE *dev;
 struct ccb_hdr *ccb_h;
 uint8_t *ptr;
 int dev_idx;

 KASSERT(mtx_owned(&controller->lock), ("controller lock not owned"));

 controller->release_queued_ccbs = FALSE;
 for (dev_idx = 0;
      dev_idx < SCI_MAX_REMOTE_DEVICES;
      dev_idx++) {

  dev = controller->remote_device[dev_idx];
  if (dev != ((void*)0) &&
      dev->release_queued_ccb == TRUE &&
      dev->queued_ccb_in_progress == ((void*)0)) {
   dev->release_queued_ccb = FALSE;
   ccb_h = TAILQ_FIRST(&dev->queued_ccbs);

   if (ccb_h == ((void*)0))
    continue;

   ptr = scsiio_cdb_ptr(&((union ccb *)ccb_h)->csio);
   isci_log_message(1, "ISCI", "release %p %x\n", ccb_h, *ptr);

   dev->queued_ccb_in_progress = (union ccb *)ccb_h;
   isci_io_request_execute_scsi_io(
       (union ccb *)ccb_h, controller);
  }
 }
}
