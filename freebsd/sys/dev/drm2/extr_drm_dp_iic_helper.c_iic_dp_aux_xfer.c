
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u8 ;
typedef int u16 ;
struct iic_msg {int len; int flags; int slave; int * buf; } ;
typedef int device_t ;


 int DRM_DEBUG_KMS (char*,int) ;
 int IIC_M_RD ;
 int iic_dp_aux_address (int ,int,int) ;
 int iic_dp_aux_get_byte (int ,int *) ;
 int iic_dp_aux_put_byte (int ,int ) ;
 int iic_dp_aux_stop (int ,int) ;

__attribute__((used)) static int
iic_dp_aux_xfer(device_t idev, struct iic_msg *msgs, uint32_t num)
{
 u8 *buf;
 int b, m, ret;
 u16 len;
 bool reading;

 ret = 0;
 reading = 0;

 for (m = 0; m < num; m++) {
  len = msgs[m].len;
  buf = msgs[m].buf;
  reading = (msgs[m].flags & IIC_M_RD) != 0;
  ret = iic_dp_aux_address(idev, msgs[m].slave >> 1, reading);
  if (ret < 0)
   break;
  if (reading) {
   for (b = 0; b < len; b++) {
    ret = iic_dp_aux_get_byte(idev, &buf[b]);
    if (ret != 0)
     break;
   }
  } else {
   for (b = 0; b < len; b++) {
    ret = iic_dp_aux_put_byte(idev, buf[b]);
    if (ret < 0)
     break;
   }
  }
  if (ret != 0)
   break;
 }
 iic_dp_aux_stop(idev, reading);
 DRM_DEBUG_KMS("dp_aux_xfer return %d\n", ret);
 return (-ret);
}
