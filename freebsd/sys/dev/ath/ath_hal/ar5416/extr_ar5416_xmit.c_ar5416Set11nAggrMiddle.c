
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl1; int ds_ctl6; } ;


 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int * AR5416_DS_TXSTATUS (struct ath_hal*,struct ar5416_desc*) ;
 int AR_AggrLen ;
 int AR_IsAggr ;
 int AR_MoreAggr ;
 int AR_PadDelim ;
 int AR_TxDone ;
 int SM (int ,int ) ;

void
ar5416Set11nAggrMiddle(struct ath_hal *ah, struct ath_desc *ds, u_int numDelims)
{
 struct ar5416_desc *ads = AR5416DESC(ds);
 uint32_t *ds_txstatus = AR5416_DS_TXSTATUS(ah,ads);

 ads->ds_ctl1 |= (AR_IsAggr | AR_MoreAggr);

 ads->ds_ctl6 &= ~AR_PadDelim;
 ads->ds_ctl6 |= SM(numDelims, AR_PadDelim);
 ads->ds_ctl6 &= ~AR_AggrLen;





 ds_txstatus[9] &= ~AR_TxDone;
}
