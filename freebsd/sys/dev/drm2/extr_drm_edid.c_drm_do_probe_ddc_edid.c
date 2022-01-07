
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iic_msg {int slave; int len; unsigned char* buf; int flags; } ;
typedef int device_t ;


 int DDC_ADDR ;
 int DDC_SEGMENT_ADDR ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int EDID_LENGTH ;
 int IIC_M_RD ;
 int iicbus_transfer (int ,struct iic_msg*,unsigned char) ;

__attribute__((used)) static int
drm_do_probe_ddc_edid(device_t adapter, unsigned char *buf,
        int block, int len)
{
 unsigned char start = block * EDID_LENGTH;
 unsigned char segment = block >> 1;
 unsigned char xfers = segment ? 3 : 2;
 int ret, retries = 5;







 do {
  struct iic_msg msgs[] = {
   {
    .slave = DDC_SEGMENT_ADDR << 1,
    .flags = 0,
    .len = 1,
    .buf = &segment,
   }, {
    .slave = DDC_ADDR << 1,
    .flags = 0,
    .len = 1,
    .buf = &start,
   }, {
    .slave = DDC_ADDR << 1,
    .flags = IIC_M_RD,
    .len = len,
    .buf = buf,
   }
  };





  ret = iicbus_transfer(adapter, &msgs[3 - xfers], xfers);

  if (ret != 0)
   DRM_DEBUG_KMS("iicbus_transfer countdown %d error %d\n",
       retries, ret);
 } while (ret != 0 && --retries);

 return ret == 0 ? 0 : -1;
}
