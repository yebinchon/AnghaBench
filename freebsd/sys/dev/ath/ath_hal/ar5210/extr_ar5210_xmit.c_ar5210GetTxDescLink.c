
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct ar5210_desc {int ds_link; } ;


 struct ar5210_desc* AR5210DESC (void*) ;

void
ar5210GetTxDescLink(struct ath_hal *ah, void *ds, uint32_t *link)
{
 struct ar5210_desc *ads = AR5210DESC(ds);

 *link = ads->ds_link;
}
