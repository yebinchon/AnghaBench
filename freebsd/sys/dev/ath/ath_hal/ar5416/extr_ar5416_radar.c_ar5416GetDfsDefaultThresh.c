
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int pe_maxlen; int pe_relstep; int pe_relpwr; int pe_inband; int pe_prssi; int pe_height; int pe_rrssi; int pe_firpwr; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int AR5416_DFS_FIRPWR ;
 int AR5416_DFS_HEIGHT ;
 int AR5416_DFS_INBAND ;
 int AR5416_DFS_MAXLEN ;
 int AR5416_DFS_PRSSI ;
 int AR5416_DFS_RELPWR ;
 int AR5416_DFS_RELSTEP ;
 int AR5416_DFS_RRSSI ;

HAL_BOOL
ar5416GetDfsDefaultThresh(struct ath_hal *ah, HAL_PHYERR_PARAM *pe)
{
 pe->pe_firpwr = AR5416_DFS_FIRPWR;
 pe->pe_rrssi = AR5416_DFS_RRSSI;
 pe->pe_height = AR5416_DFS_HEIGHT;
 pe->pe_prssi = AR5416_DFS_PRSSI;
 pe->pe_inband = AR5416_DFS_INBAND;
 pe->pe_relpwr = AR5416_DFS_RELPWR;
 pe->pe_relstep = AR5416_DFS_RELSTEP;
 pe->pe_maxlen = AR5416_DFS_MAXLEN;

 return (AH_TRUE);
}
