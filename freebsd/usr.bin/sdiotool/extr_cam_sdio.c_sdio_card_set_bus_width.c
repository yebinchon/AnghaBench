
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cam_device {int dummy; } ;
typedef enum mmc_bus_width { ____Placeholder_mmc_bus_width } mmc_bus_width ;


 int CCCR_BUS_WIDTH_4 ;
 int SD_IO_CCCR_BUS_WIDTH ;



 int sdio_rw_direct (struct cam_device*,int ,int ,int,int*,int*) ;
 int warn (char*) ;

int
sdio_card_set_bus_width(struct cam_device *dev, enum mmc_bus_width bw) {
 int ret;
 uint8_t ctl_val;
 ret = sdio_rw_direct(dev, 0, SD_IO_CCCR_BUS_WIDTH, 0, ((void*)0), &ctl_val);
 if (ret < 0) {
  warn("Error getting CCCR_BUS_WIDTH value");
  return ret;
 }
 ctl_val &= ~0x3;
 switch (bw) {
 case 130:

  break;
 case 129:
  ctl_val |= CCCR_BUS_WIDTH_4;
  break;
 case 128:
  warn("Cannot do 8-bit on SDIO yet");
  return -1;
  break;
 }
 ret = sdio_rw_direct(dev, 0, SD_IO_CCCR_BUS_WIDTH, 1, &ctl_val, &ctl_val);
 if (ret < 0) {
  warn("Error setting CCCR_BUS_WIDTH value");
  return ret;
 }
 return ret;
}
