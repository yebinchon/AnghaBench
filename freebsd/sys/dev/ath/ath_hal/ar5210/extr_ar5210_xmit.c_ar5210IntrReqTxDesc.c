
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5210_desc {int ds_ctl0; } ;


 struct ar5210_desc* AR5210DESC (struct ath_desc*) ;
 int AR_TxInterReq ;

void
ar5210IntrReqTxDesc(struct ath_hal *ah, struct ath_desc *ds)
{
 struct ar5210_desc *ads = AR5210DESC(ds);

 ads->ds_ctl0 |= AR_TxInterReq;
}
