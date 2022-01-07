
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5212_desc {int ds_ctl0; } ;


 struct ar5212_desc* AR5212DESC (struct ath_desc*) ;
 int AR_TxInterReq ;
 int __bswap32 (int ) ;

void
ar5212IntrReqTxDesc(struct ath_hal *ah, struct ath_desc *ds)
{
 struct ar5212_desc *ads = AR5212DESC(ds);




 ads->ds_ctl0 |= AR_TxInterReq;

}
