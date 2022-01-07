
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int (* ah_setDfsCacTxQuiet ) (struct ath_hal*,int ) ;} ;
typedef int HAL_BOOL ;


 int stub1 (struct ath_hal*,int ) ;

void
ath_hal_set_dfs_cac_tx_quiet(struct ath_hal *ah, HAL_BOOL ena)
{

 if (ah->ah_setDfsCacTxQuiet == ((void*)0))
  return;
 ah->ah_setDfsCacTxQuiet(ah, ena);
}
