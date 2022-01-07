
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int flags; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
struct scsi_inquiry_data {int dummy; } ;
struct mpt_standalone_disk {int dummy; } ;
struct cam_device {int dummy; } ;


 int CAM_DEV_QFRZDIS ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (int *) ;
 int EIO ;
 int ENOMEM ;
 int MSG_SIMPLE_Q_TAG ;
 int SHORT_INQUIRY_LENGTH ;
 int SSD_FULL_SIZE ;
 struct scsi_inquiry_data* calloc (int,int) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int errno ;
 int format_scsi_inquiry (struct mpt_standalone_disk*,struct scsi_inquiry_data*) ;
 int free (struct scsi_inquiry_data*) ;
 int scsi_inquiry (int *,int,int *,int ,void*,int ,int ,int ,int ,int) ;

__attribute__((used)) static int
fetch_scsi_inquiry(struct cam_device *dev, struct mpt_standalone_disk *disk)
{
 struct scsi_inquiry_data *inq_buf;
 union ccb *ccb;
 int error;

 ccb = cam_getccb(dev);
 if (ccb == ((void*)0))
  return (ENOMEM);


 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 inq_buf = calloc(1, sizeof(*inq_buf));
 if (inq_buf == ((void*)0)) {
  cam_freeccb(ccb);
  return (ENOMEM);
 }
 scsi_inquiry(&ccb->csio, 1, ((void*)0), MSG_SIMPLE_Q_TAG, (void *)inq_buf,
     SHORT_INQUIRY_LENGTH, 0, 0, SSD_FULL_SIZE, 5000);


 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (cam_send_ccb(dev, ccb) < 0) {
  error = errno;
  free(inq_buf);
  cam_freeccb(ccb);
  return (error);
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  free(inq_buf);
  cam_freeccb(ccb);
  return (EIO);
 }

 cam_freeccb(ccb);
 format_scsi_inquiry(disk, inq_buf);
 free(inq_buf);
 return (0);
}
