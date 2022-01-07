
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal_5210 {int ah_staId1Defaults; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5210* AH5210 (struct ath_hal*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_ADHOC ;
 int AR_STA_ID1_AP ;
 int AR_STA_ID1_DESC_ANTENNA ;
 int AR_STA_ID1_NO_PSPOLL ;
 int AR_STA_ID1_PWR_SV ;




 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar5210SetOperatingMode(struct ath_hal *ah, int opmode)
{
 struct ath_hal_5210 *ahp = AH5210(ah);
 uint32_t val;

 val = OS_REG_READ(ah, AR_STA_ID1) & 0xffff;
 switch (opmode) {
 case 131:
  OS_REG_WRITE(ah, AR_STA_ID1, val
   | AR_STA_ID1_AP
   | AR_STA_ID1_NO_PSPOLL
   | AR_STA_ID1_DESC_ANTENNA
   | ahp->ah_staId1Defaults);
  break;
 case 130:
  OS_REG_WRITE(ah, AR_STA_ID1, val
   | AR_STA_ID1_ADHOC
   | AR_STA_ID1_NO_PSPOLL
   | AR_STA_ID1_DESC_ANTENNA
   | ahp->ah_staId1Defaults);
  break;
 case 128:
  OS_REG_WRITE(ah, AR_STA_ID1, val
   | AR_STA_ID1_NO_PSPOLL
   | AR_STA_ID1_PWR_SV
   | ahp->ah_staId1Defaults);
  break;
 case 129:
  OS_REG_WRITE(ah, AR_STA_ID1, val
   | AR_STA_ID1_NO_PSPOLL
   | ahp->ah_staId1Defaults);
  break;
 }
}
