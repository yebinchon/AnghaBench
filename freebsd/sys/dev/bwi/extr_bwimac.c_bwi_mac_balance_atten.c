
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BWI_BBP_ATTEN_MAX ;
 int BWI_RF_ATTEN_FACTOR ;
 int BWI_RF_ATTEN_MAX0 ;
 int KASSERT (int,char*) ;

__attribute__((used)) static __inline void
bwi_mac_balance_atten(int *bbp_atten0, int *rf_atten0)
{
 int bbp_atten, rf_atten, rf_atten_lim = -1;

 bbp_atten = *bbp_atten0;
 rf_atten = *rf_atten0;
 if (rf_atten < 0)
  rf_atten_lim = 0;
 else if (rf_atten > BWI_RF_ATTEN_MAX0)
  rf_atten_lim = BWI_RF_ATTEN_MAX0;

 if (rf_atten_lim >= 0) {
  bbp_atten += (BWI_RF_ATTEN_FACTOR * (rf_atten - rf_atten_lim));
  rf_atten = rf_atten_lim;
 }





 while (rf_atten < BWI_RF_ATTEN_MAX0 && bbp_atten > BWI_BBP_ATTEN_MAX) {
  bbp_atten -= BWI_RF_ATTEN_FACTOR;
  ++rf_atten;
 }
 while (rf_atten > 0 && bbp_atten < 0) {
  bbp_atten += BWI_RF_ATTEN_FACTOR;
  --rf_atten;
 }


 KASSERT(rf_atten >= 0 && rf_atten <= BWI_RF_ATTEN_MAX0,
     ("rf_atten %d", rf_atten));




 if (bbp_atten < 0)
  bbp_atten = 0;
 else if (bbp_atten > BWI_BBP_ATTEN_MAX)
  bbp_atten = BWI_BBP_ATTEN_MAX;

 *rf_atten0 = rf_atten;
 *bbp_atten0 = bbp_atten;
}
