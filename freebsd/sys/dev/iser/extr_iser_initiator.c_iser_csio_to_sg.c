
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_data_buf {int dummy; } ;
struct ccb_hdr {int flags; } ;
struct ccb_scsiio {scalar_t__ data_ptr; struct ccb_hdr ccb_h; } ;
struct bio {int dummy; } ;



 int CAM_DATA_MASK ;

 int EINVAL ;
 int ISER_ERR (char*,int) ;
 int iser_bio_to_sg (struct bio*,struct iser_data_buf*) ;
 int iser_buf_to_sg (scalar_t__,struct iser_data_buf*) ;

__attribute__((used)) static int
iser_csio_to_sg(struct ccb_scsiio *csio, struct iser_data_buf *data_buf)
{
 struct ccb_hdr *ccbh;
 int err = 0;

 ccbh = &csio->ccb_h;
 switch ((ccbh->flags & CAM_DATA_MASK)) {
  case 129:
   iser_bio_to_sg((struct bio *) csio->data_ptr, data_buf);
   break;
  case 128:
   iser_buf_to_sg(csio->data_ptr, data_buf);
   break;
  default:
   ISER_ERR("flags 0x%X unimplemented", ccbh->flags);
   err = EINVAL;
 }
 return (err);
}
