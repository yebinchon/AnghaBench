
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cam_device {int dummy; } ;


 scalar_t__ SD_IO_CCCR_CISPTR ;
 int SD_IO_CIS_SIZE ;
 int SD_IO_CIS_START ;
 int sdio_read_1 (struct cam_device*,int ,scalar_t__,int*) ;
 int warn (char*,int) ;

uint32_t
sdio_get_common_cis_addr(struct cam_device *dev) {
 uint32_t addr;
 int ret;

 addr = sdio_read_1(dev, 0, SD_IO_CCCR_CISPTR, &ret);
 addr |= sdio_read_1(dev, 0, SD_IO_CCCR_CISPTR + 1, &ret) << 8;
 addr |= sdio_read_1(dev, 0, SD_IO_CCCR_CISPTR + 2, &ret) << 16;

 if (addr < SD_IO_CIS_START || addr > SD_IO_CIS_START + SD_IO_CIS_SIZE) {
  warn("Bad CIS address: %04X\n", addr);
  addr = 0;
 }

 return addr;
}
