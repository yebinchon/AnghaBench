
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ dxfer_len; } ;
struct TYPE_10__ {scalar_t__ resid; scalar_t__ dxfer_len; } ;
struct TYPE_9__ {int status; struct camdd_buf* ccb_buf; } ;
union ccb {TYPE_5__ nvmeio; TYPE_4__ csio; TYPE_3__ ccb_h; } ;
struct camdd_dev_pass {int protocol; TYPE_6__* dev; } ;
struct TYPE_7__ {struct camdd_dev_pass pass; } ;
struct camdd_dev {int mutex; int flags; scalar_t__ bytes_transferred; int cur_active_io; int active_queue; TYPE_1__ dev_spec; } ;
struct camdd_buf_data {scalar_t__ resid; union ccb ccb; } ;
struct TYPE_8__ {struct camdd_buf_data data; } ;
struct camdd_buf {scalar_t__ status; TYPE_2__ buf_type_spec; } ;
typedef int ccb ;
typedef int cam_status ;
struct TYPE_12__ {int fd; } ;


 int CAMDD_DEV_FLAG_EOF ;
 scalar_t__ CAMDD_STATUS_EOF ;
 scalar_t__ CAMDD_STATUS_ERROR ;
 scalar_t__ CAMDD_STATUS_NONE ;
 int CAMIOGET ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;


 int STAILQ_REMOVE (int *,struct camdd_buf*,int ,int ) ;
 int bcopy (union ccb*,union ccb*,int) ;
 int cam_error_print (TYPE_6__*,union ccb*,int ,int ,int ) ;
 int camdd_buf ;
 scalar_t__ camdd_ccb_status (union ccb*,int) ;
 int camdd_complete_buf (struct camdd_dev*,struct camdd_buf*,int*) ;
 int ioctl (int ,int ,union ccb*) ;
 int links ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;

int
camdd_pass_fetch(struct camdd_dev *dev)
{
 struct camdd_dev_pass *pass_dev = &dev->dev_spec.pass;
 union ccb ccb;
 int retval = 0, num_fetched = 0, error_count = 0;

 pthread_mutex_unlock(&dev->mutex);



 while ((retval = ioctl(pass_dev->dev->fd, CAMIOGET, &ccb)) != -1) {
  struct camdd_buf *buf;
  struct camdd_buf_data *data;
  cam_status ccb_status;
  union ccb *buf_ccb;

  buf = ccb.ccb_h.ccb_buf;
  data = &buf->buf_type_spec.data;
  buf_ccb = &data->ccb;

  num_fetched++;




  bcopy(&ccb, buf_ccb, sizeof(ccb));

  pthread_mutex_lock(&dev->mutex);




  STAILQ_REMOVE(&dev->active_queue, buf, camdd_buf, links);
  dev->cur_active_io--;

  ccb_status = ccb.ccb_h.status & CAM_STATUS_MASK;
  if (ccb_status != CAM_REQ_CMP) {
   cam_error_print(pass_dev->dev, &ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  }

  switch (pass_dev->protocol) {
  case 128:
   data->resid = ccb.csio.resid;
   dev->bytes_transferred += (ccb.csio.dxfer_len - ccb.csio.resid);
   break;
  case 129:
   data->resid = 0;
   dev->bytes_transferred += ccb.nvmeio.dxfer_len;
   break;
  default:
   return -1;
   break;
  }

  if (buf->status == CAMDD_STATUS_NONE)
   buf->status = camdd_ccb_status(&ccb, pass_dev->protocol);
  if (buf->status == CAMDD_STATUS_ERROR)
   error_count++;
  else if (buf->status == CAMDD_STATUS_EOF) {




   dev->flags |= CAMDD_DEV_FLAG_EOF;
  }

  camdd_complete_buf(dev, buf, &error_count);




  pthread_mutex_unlock(&dev->mutex);
 }

 pthread_mutex_lock(&dev->mutex);

 if (error_count > 0)
  return (-1);
 else
  return (num_fetched);
}
