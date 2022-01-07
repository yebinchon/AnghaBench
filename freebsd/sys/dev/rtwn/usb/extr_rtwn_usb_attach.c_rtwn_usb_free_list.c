
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct rtwn_data {int * m; int * ni; int * buf; } ;


 int M_USBDEV ;
 int free (int *,int ) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
rtwn_usb_free_list(struct rtwn_softc *sc, struct rtwn_data data[], int ndata)
{
 int i;

 for (i = 0; i < ndata; i++) {
  struct rtwn_data *dp = &data[i];

  if (dp->buf != ((void*)0)) {
   free(dp->buf, M_USBDEV);
   dp->buf = ((void*)0);
  }
  if (dp->ni != ((void*)0)) {
   ieee80211_free_node(dp->ni);
   dp->ni = ((void*)0);
  }
  if (dp->m != ((void*)0)) {
   m_freem(dp->m);
   dp->m = ((void*)0);
  }
 }
}
