
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {scalar_t__ isp_port; } ;
typedef TYPE_1__ ispsoftc_t ;


 int BIU_NVRAM ;
 int BIU_NVRAM_CLOCK ;
 int BIU_NVRAM_DATAIN ;
 int BIU_NVRAM_DATAOUT ;
 int BIU_NVRAM_SELECT ;
 int ISP1080_NVRAM_SIZE ;
 int ISP2100_NVRAM_SIZE ;
 int ISP_DELAY (int) ;
 int ISP_NVRAM_READ ;
 int ISP_NVRAM_SIZE ;
 int ISP_READ (TYPE_1__*,int ) ;
 int ISP_SWIZZLE_NVRAM_WORD (TYPE_1__*,int*) ;
 int ISP_WRITE (TYPE_1__*,int ,int) ;
 scalar_t__ IS_2312 (TYPE_1__*) ;
 scalar_t__ IS_FC (TYPE_1__*) ;
 scalar_t__ IS_ULTRA2 (TYPE_1__*) ;

__attribute__((used)) static void
isp_rdnvram_word(ispsoftc_t *isp, int wo, uint16_t *rp)
{
 int i, cbits;
 uint16_t bit, rqst, junk;

 ISP_WRITE(isp, BIU_NVRAM, BIU_NVRAM_SELECT);
 ISP_DELAY(10);
 ISP_WRITE(isp, BIU_NVRAM, BIU_NVRAM_SELECT|BIU_NVRAM_CLOCK);
 ISP_DELAY(10);

 if (IS_FC(isp)) {
  wo &= ((ISP2100_NVRAM_SIZE >> 1) - 1);
  if (IS_2312(isp) && isp->isp_port) {
   wo += 128;
  }
  rqst = (ISP_NVRAM_READ << 8) | wo;
  cbits = 10;
 } else if (IS_ULTRA2(isp)) {
  wo &= ((ISP1080_NVRAM_SIZE >> 1) - 1);
  rqst = (ISP_NVRAM_READ << 8) | wo;
  cbits = 10;
 } else {
  wo &= ((ISP_NVRAM_SIZE >> 1) - 1);
  rqst = (ISP_NVRAM_READ << 6) | wo;
  cbits = 8;
 }




 for (i = cbits; i >= 0; i--) {
  if ((rqst >> i) & 1) {
   bit = BIU_NVRAM_SELECT | BIU_NVRAM_DATAOUT;
  } else {
   bit = BIU_NVRAM_SELECT;
  }
  ISP_WRITE(isp, BIU_NVRAM, bit);
  ISP_DELAY(10);
  junk = ISP_READ(isp, BIU_NVRAM);
  ISP_WRITE(isp, BIU_NVRAM, bit | BIU_NVRAM_CLOCK);
  ISP_DELAY(10);
  junk = ISP_READ(isp, BIU_NVRAM);
  ISP_WRITE(isp, BIU_NVRAM, bit);
  ISP_DELAY(10);
  junk = ISP_READ(isp, BIU_NVRAM);
 }



 *rp = 0;
 for (i = 0; i < 16; i++) {
  uint16_t rv;
  *rp <<= 1;
  ISP_WRITE(isp, BIU_NVRAM, BIU_NVRAM_SELECT|BIU_NVRAM_CLOCK);
  ISP_DELAY(10);
  rv = ISP_READ(isp, BIU_NVRAM);
  if (rv & BIU_NVRAM_DATAIN) {
   *rp |= 1;
  }
  ISP_DELAY(10);
  ISP_WRITE(isp, BIU_NVRAM, BIU_NVRAM_SELECT);
  ISP_DELAY(10);
  junk = ISP_READ(isp, BIU_NVRAM);
 }
 ISP_WRITE(isp, BIU_NVRAM, 0);
 ISP_DELAY(10);
 junk = ISP_READ(isp, BIU_NVRAM);
 ISP_SWIZZLE_NVRAM_WORD(isp, rp);
}
