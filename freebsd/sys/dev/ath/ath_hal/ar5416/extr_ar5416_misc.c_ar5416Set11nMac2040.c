
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_HT_MACMODE ;


 scalar_t__ AR_2040_JOINED_RX_CLEAR ;
 int AR_2040_MODE ;
 scalar_t__ HAL_HT_MACMODE_2040 ;
 int OS_REG_WRITE (struct ath_hal*,int ,scalar_t__) ;

void
ar5416Set11nMac2040(struct ath_hal *ah, HAL_HT_MACMODE mode)
{
    uint32_t macmode;


    if (mode == HAL_HT_MACMODE_2040) {
        macmode = AR_2040_JOINED_RX_CLEAR;
    } else {
        macmode = 0;
    }
    OS_REG_WRITE(ah, AR_2040_MODE, macmode);
}
