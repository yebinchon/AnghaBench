
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl0; } ;


 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int AR_VirtMoreFrag ;

void
ar5416Set11nVirtualMoreFrag(struct ath_hal *ah, struct ath_desc *ds,
    u_int vmf)
{
 struct ar5416_desc *ads = AR5416DESC(ds);
 if (vmf)
  ads->ds_ctl0 |= AR_VirtMoreFrag;
 else
  ads->ds_ctl0 &= ~AR_VirtMoreFrag;
}
