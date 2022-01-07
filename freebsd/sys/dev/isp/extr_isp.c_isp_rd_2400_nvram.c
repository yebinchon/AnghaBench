
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int ispsoftc_t ;


 int BIU2400_FLASH_ADDR ;
 int BIU2400_FLASH_DATA ;
 int ISP_DELAY (int) ;
 unsigned int ISP_READ (int *,int ) ;
 int ISP_SWIZZLE_NVRAM_LONG (int *,unsigned int*) ;
 int ISP_WRITE (int *,int ,unsigned int) ;
 scalar_t__ IS_25XX (int *) ;
 scalar_t__ IS_26XX (int *) ;

__attribute__((used)) static void
isp_rd_2400_nvram(ispsoftc_t *isp, uint32_t addr, uint32_t *rp)
{
 int loops = 0;
 uint32_t base = 0x7ffe0000;
 uint32_t tmp = 0;

 if (IS_26XX(isp)) {
  base = 0x7fe7c000;
 } else if (IS_25XX(isp)) {
  base = 0x7ff00000 | 0x48000;
 }
 ISP_WRITE(isp, BIU2400_FLASH_ADDR, base | addr);
 for (loops = 0; loops < 5000; loops++) {
  ISP_DELAY(10);
  tmp = ISP_READ(isp, BIU2400_FLASH_ADDR);
  if ((tmp & (1U << 31)) != 0) {
   break;
  }
 }
 if (tmp & (1U << 31)) {
  *rp = ISP_READ(isp, BIU2400_FLASH_DATA);
  ISP_SWIZZLE_NVRAM_LONG(isp, rp);
 } else {
  *rp = 0xffffffff;
 }
}
