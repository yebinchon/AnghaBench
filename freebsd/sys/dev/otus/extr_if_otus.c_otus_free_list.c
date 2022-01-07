
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int dummy; } ;
struct otus_data {int * ni; int * buf; } ;


 int M_USBDEV ;
 int free (int *,int ) ;
 int ieee80211_free_node (int *) ;

__attribute__((used)) static void
otus_free_list(struct otus_softc *sc, struct otus_data data[], int ndata)
{
 int i;

 for (i = 0; i < ndata; i++) {
  struct otus_data *dp = &data[i];

  if (dp->buf != ((void*)0)) {
   free(dp->buf, M_USBDEV);
   dp->buf = ((void*)0);
  }
  if (dp->ni != ((void*)0)) {
   ieee80211_free_node(dp->ni);
   dp->ni = ((void*)0);
  }
 }
}
