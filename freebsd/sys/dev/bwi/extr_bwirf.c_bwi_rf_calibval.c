
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_mac {int dummy; } ;


 int BWI_RFR_BBP_ATTEN ;
 int BWI_RFR_BBP_ATTEN_CALIB_BIT ;
 int BWI_RFR_BBP_ATTEN_CALIB_IDX ;
 int KASSERT (int,char*) ;
 int RF_READ (struct bwi_mac*,int ) ;
 int __SHIFTOUT (int,int ) ;
 scalar_t__ nitems (int const*) ;

__attribute__((used)) static uint16_t
bwi_rf_calibval(struct bwi_mac *mac)
{

 static const uint16_t rf_calibvals[] = {
  0x2, 0x3, 0x1, 0xf, 0x6, 0x7, 0x5, 0xf,
  0xa, 0xb, 0x9, 0xf, 0xe, 0xf, 0xd, 0xf
 };
 uint16_t val, calib;
 int idx;

 val = RF_READ(mac, BWI_RFR_BBP_ATTEN);
 idx = __SHIFTOUT(val, BWI_RFR_BBP_ATTEN_CALIB_IDX);
 KASSERT(idx < (int)nitems(rf_calibvals), ("idx %d", idx));

 calib = rf_calibvals[idx] << 1;
 if (val & BWI_RFR_BBP_ATTEN_CALIB_BIT)
  calib |= 0x1;
 calib |= 0x20;

 return calib;
}
