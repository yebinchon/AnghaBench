
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl1; int u; int ds_rxstatus8; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int AR_BufLen ;
 int AR_RxDone ;
 int AR_RxIntrReq ;
 int HALASSERT (int) ;
 int HAL_RXDESC_INTREQ ;
 int OS_MEMZERO (int *,int) ;

HAL_BOOL
ar5416SetupRxDesc(struct ath_hal *ah, struct ath_desc *ds,
    uint32_t size, u_int flags)
{
 struct ar5416_desc *ads = AR5416DESC(ds);

 HALASSERT((size &~ AR_BufLen) == 0);

 ads->ds_ctl1 = size & AR_BufLen;
 if (flags & HAL_RXDESC_INTREQ)
  ads->ds_ctl1 |= AR_RxIntrReq;


 ads->ds_rxstatus8 &= ~AR_RxDone;


 OS_MEMZERO(&(ads->u), sizeof(ads->u));

 return AH_TRUE;
}
