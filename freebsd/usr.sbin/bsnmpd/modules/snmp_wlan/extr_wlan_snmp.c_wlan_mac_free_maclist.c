
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mac_mac {int dummy; } ;
struct wlan_iface {int mac_maclist; } ;


 struct wlan_mac_mac* SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct wlan_mac_mac*) ;
 int wm ;

__attribute__((used)) static void
wlan_mac_free_maclist(struct wlan_iface *wif)
{
 struct wlan_mac_mac *wmm;

 while ((wmm = SLIST_FIRST(&wif->mac_maclist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&wif->mac_maclist, wm);
  free(wmm);
 }

 SLIST_INIT(&wif->mac_maclist);
}
