
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {scalar_t__ ic_freq; } ;
typedef scalar_t__ int16_t ;



__attribute__((used)) static void
intersect(struct ieee80211_channel *dst, int16_t *dtxpow, int *nd,
    const struct ieee80211_channel *src, int16_t *stxpow, int ns)
{
 int i = 0, j, k, l;
 while (i < *nd) {
  for (j = 0; j < ns && dst[i].ic_freq != src[j].ic_freq; j++)
   ;
  if (j < ns && dtxpow[i] == stxpow[j]) {
   for (k = i+1, l = i; k < *nd; k++, l++)
    dst[l] = dst[k];
   (*nd)--;
  } else
   i++;
 }
}
