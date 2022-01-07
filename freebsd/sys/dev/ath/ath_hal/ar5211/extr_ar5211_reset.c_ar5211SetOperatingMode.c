
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal_5211 {int ah_staId1Defaults; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5211* AH5211 (struct ath_hal*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_ADHOC ;
 int AR_STA_ID1_DEFAULT_ANTENNA ;
 int AR_STA_ID1_DESC_ANTENNA ;
 int AR_STA_ID1_RTS_USE_DEF ;
 int AR_STA_ID1_STA_AP ;




 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar5211SetOperatingMode(struct ath_hal *ah, int opmode)
{
 struct ath_hal_5211 *ahp = AH5211(ah);
 uint32_t val;

 val = OS_REG_READ(ah, AR_STA_ID1) & 0xffff;
 switch (opmode) {
 case 131:
  OS_REG_WRITE(ah, AR_STA_ID1, val
   | AR_STA_ID1_STA_AP
   | AR_STA_ID1_RTS_USE_DEF
   | ahp->ah_staId1Defaults);
  break;
 case 130:
  OS_REG_WRITE(ah, AR_STA_ID1, val
   | AR_STA_ID1_ADHOC
   | AR_STA_ID1_DESC_ANTENNA
   | ahp->ah_staId1Defaults);
  break;
 case 128:
 case 129:
  OS_REG_WRITE(ah, AR_STA_ID1, val
   | AR_STA_ID1_DEFAULT_ANTENNA
   | ahp->ah_staId1Defaults);
  break;
 }
}
