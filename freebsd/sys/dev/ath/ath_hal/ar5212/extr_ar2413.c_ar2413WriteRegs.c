
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int HAL_INI_WRITE_ARRAY (struct ath_hal*,int ,int,int) ;
 int ar5212BB_RfGain_2413 ;
 int ar5212Common_2413 ;
 int ar5212Modes_2413 ;

__attribute__((used)) static void
ar2413WriteRegs(struct ath_hal *ah, u_int modesIndex, u_int freqIndex,
 int writes)
{
 HAL_INI_WRITE_ARRAY(ah, ar5212Modes_2413, modesIndex, writes);
 HAL_INI_WRITE_ARRAY(ah, ar5212Common_2413, 1, writes);
 HAL_INI_WRITE_ARRAY(ah, ar5212BB_RfGain_2413, freqIndex, writes);
}
