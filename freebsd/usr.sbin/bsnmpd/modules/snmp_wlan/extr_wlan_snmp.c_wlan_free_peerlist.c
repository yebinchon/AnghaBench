
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_peer {int dummy; } ;
struct wlan_iface {int peerlist; } ;


 struct wlan_peer* SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct wlan_peer*) ;
 int wp ;

__attribute__((used)) static void
wlan_free_peerlist(struct wlan_iface *wif)
{
 struct wlan_peer *wip;

 while ((wip = SLIST_FIRST(&wif->peerlist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&wif->peerlist, wp);
  free(wip);
 }

 SLIST_INIT(&wif->peerlist);
}
