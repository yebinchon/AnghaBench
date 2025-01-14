
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5212_desc {int ds_ctl1; scalar_t__ ds_rxstatus1; scalar_t__ ds_rxstatus0; scalar_t__ ds_ctl0; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 struct ar5212_desc* AR5212DESC (struct ath_desc*) ;
 int AR_BufLen ;
 int AR_RxInterReq ;
 int HALASSERT (int) ;
 int HAL_RXDESC_INTREQ ;

HAL_BOOL
ar5212SetupRxDesc(struct ath_hal *ah, struct ath_desc *ds,
 uint32_t size, u_int flags)
{
 struct ar5212_desc *ads = AR5212DESC(ds);

 HALASSERT((size &~ AR_BufLen) == 0);

 ads->ds_ctl0 = 0;
 ads->ds_ctl1 = size & AR_BufLen;

 if (flags & HAL_RXDESC_INTREQ)
  ads->ds_ctl1 |= AR_RxInterReq;
 ads->ds_rxstatus0 = ads->ds_rxstatus1 = 0;

 return AH_TRUE;
}
