
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct ar5211_desc {int ds_link; } ;


 struct ar5211_desc* AR5211DESC (void*) ;

void
ar5211SetTxDescLink(struct ath_hal *ah, void *ds, uint32_t link)
{
 struct ar5211_desc *ads = AR5211DESC(ds);

 ads->ds_link = link;
}
