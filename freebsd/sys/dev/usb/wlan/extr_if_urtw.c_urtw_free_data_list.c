
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int dummy; } ;
struct urtw_data {int * ni; int * buf; int * m; } ;


 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
urtw_free_data_list(struct urtw_softc *sc, struct urtw_data data[], int ndata,
    int fillmbuf)
{
 int i;

 for (i = 0; i < ndata; i++) {
  struct urtw_data *dp = &data[i];

  if (fillmbuf == 1) {
   if (dp->m != ((void*)0)) {
    m_freem(dp->m);
    dp->m = ((void*)0);
    dp->buf = ((void*)0);
   }
  } else {
   dp->buf = ((void*)0);
  }
  if (dp->ni != ((void*)0)) {
   ieee80211_free_node(dp->ni);
   dp->ni = ((void*)0);
  }
 }
}
