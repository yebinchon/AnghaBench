
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {void* ds_ctl3; void* ds_ctl2; int ds_ctl6; int ds_ctl1; } ;
struct TYPE_2__ {void* ds_ctl3; void* ds_ctl2; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 TYPE_1__* AR5416DESC_CONST (struct ath_desc const*) ;
 int AR_MoreAggr ;
 int AR_PadDelim ;
 void* __bswap32 (void*) ;

HAL_BOOL
ar5416SetupLastTxDesc(struct ath_hal *ah, struct ath_desc *ds,
  const struct ath_desc *ds0)
{
 struct ar5416_desc *ads = AR5416DESC(ds);

 ads->ds_ctl1 &= ~AR_MoreAggr;
 ads->ds_ctl6 &= ~AR_PadDelim;






 ads->ds_ctl2 = AR5416DESC_CONST(ds0)->ds_ctl2;
 ads->ds_ctl3 = AR5416DESC_CONST(ds0)->ds_ctl3;

 return AH_TRUE;
}
