
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_request {int vbr_ack; } ;


 int EIO ;
 int ENOTSUP ;



__attribute__((used)) static int
vtblk_request_error(struct vtblk_request *req)
{
 int error;

 switch (req->vbr_ack) {
 case 129:
  error = 0;
  break;
 case 128:
  error = ENOTSUP;
  break;
 default:
  error = EIO;
  break;
 }

 return (error);
}
