
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int flags; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
typedef int uint8_t ;
struct scsi_read_capacity_data_long {int addr; } ;
struct scsi_read_capacity_data {int addr; } ;
struct mpt_standalone_disk {int maxlba; } ;
struct cam_device {int dummy; } ;
typedef int rcaplong ;


 int CAM_DEV_QFRZDIS ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (int *) ;
 int EIO ;
 int ENOMEM ;
 int MSG_SIMPLE_Q_TAG ;
 int SSD_FULL_SIZE ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int errno ;
 int scsi_4btoul (int ) ;
 int scsi_8btou64 (int ) ;
 int scsi_read_capacity (int *,int,int *,int ,struct scsi_read_capacity_data*,int ,int) ;
 int scsi_read_capacity_16 (int *,int,int *,int ,int ,int ,int ,int *,int,int ,int) ;

__attribute__((used)) static int
fetch_scsi_capacity(struct cam_device *dev, struct mpt_standalone_disk *disk)
{
 struct scsi_read_capacity_data rcap;
 struct scsi_read_capacity_data_long rcaplong;
 union ccb *ccb;
 int error;

 ccb = cam_getccb(dev);
 if (ccb == ((void*)0))
  return (ENOMEM);


 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 scsi_read_capacity(&ccb->csio, 1, ((void*)0), MSG_SIMPLE_Q_TAG, &rcap,
     SSD_FULL_SIZE, 5000);


 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (cam_send_ccb(dev, ccb) < 0) {
  error = errno;
  cam_freeccb(ccb);
  return (error);
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  cam_freeccb(ccb);
  return (EIO);
 }






 if (scsi_4btoul(rcap.addr) != 0xffffffff) {
  disk->maxlba = scsi_4btoul(rcap.addr);
  cam_freeccb(ccb);
  return (0);
 }


 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 scsi_read_capacity_16(&ccb->csio, 1, ((void*)0), MSG_SIMPLE_Q_TAG, 0, 0, 0,
     (uint8_t *)&rcaplong, sizeof(rcaplong), SSD_FULL_SIZE, 5000);


 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (cam_send_ccb(dev, ccb) < 0) {
  error = errno;
  cam_freeccb(ccb);
  return (error);
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  cam_freeccb(ccb);
  return (EIO);
 }
 cam_freeccb(ccb);

 disk->maxlba = scsi_8btou64(rcaplong.addr);
 return (0);
}
