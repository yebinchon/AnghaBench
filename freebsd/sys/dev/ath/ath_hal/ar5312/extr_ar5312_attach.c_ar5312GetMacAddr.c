
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ath_hal {int dummy; } ;
struct ar531x_boarddata {int * wlan1Mac; int * wlan0Mac; } ;
struct TYPE_2__ {int ah_macaddr; } ;
typedef int HAL_BOOL ;


 TYPE_1__* AH5212 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 struct ar531x_boarddata* AR5312_BOARDCONFIG (struct ath_hal*) ;
 int AR5312_UNIT (struct ath_hal*) ;
 int OS_MEMCPY (int ,int const*,int) ;
 int ath_hal_printf (struct ath_hal*,char*,int) ;

__attribute__((used)) static HAL_BOOL
ar5312GetMacAddr(struct ath_hal *ah)
{
 const struct ar531x_boarddata *board = AR5312_BOARDCONFIG(ah);
        int wlanNum = AR5312_UNIT(ah);
        const uint8_t *macAddr;

 switch (wlanNum) {
 case 0:
  macAddr = board->wlan0Mac;
  break;
 case 1:
  macAddr = board->wlan1Mac;
  break;
 default:




  return AH_FALSE;
 }
 OS_MEMCPY(AH5212(ah)->ah_macaddr, macAddr, 6);
 return AH_TRUE;
}
