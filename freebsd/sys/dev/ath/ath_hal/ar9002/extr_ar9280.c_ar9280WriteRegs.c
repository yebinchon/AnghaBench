
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_ini_bb_rfgain; } ;


 TYPE_1__* AH5416 (struct ath_hal*) ;
 int ath_hal_ini_write (struct ath_hal*,int *,int ,int) ;

__attribute__((used)) static void
ar9280WriteRegs(struct ath_hal *ah, u_int modesIndex, u_int freqIndex,
 int writes)
{
 (void) ath_hal_ini_write(ah, &AH5416(ah)->ah_ini_bb_rfgain,
  freqIndex, writes);
}
