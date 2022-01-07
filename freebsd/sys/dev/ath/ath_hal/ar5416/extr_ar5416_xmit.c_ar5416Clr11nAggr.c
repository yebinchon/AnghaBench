
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl1; int ds_ctl6; } ;


 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int AR_AggrLen ;
 int AR_IsAggr ;
 int AR_MoreAggr ;
 int AR_PadDelim ;

void
ar5416Clr11nAggr(struct ath_hal *ah, struct ath_desc *ds)
{
 struct ar5416_desc *ads = AR5416DESC(ds);

 ads->ds_ctl1 &= (~AR_IsAggr & ~AR_MoreAggr);
 ads->ds_ctl6 &= ~AR_PadDelim;
 ads->ds_ctl6 &= ~AR_AggrLen;
}
