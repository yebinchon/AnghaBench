
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_scan_result {int dummy; } ;
struct wlan_iface {int scanlist; } ;


 struct wlan_scan_result* SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct wlan_scan_result*) ;
 int wsr ;

__attribute__((used)) static void
wlan_scan_free_results(struct wlan_iface *wif)
{
 struct wlan_scan_result *sr;

 while ((sr = SLIST_FIRST(&wif->scanlist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&wif->scanlist, wsr);
  free(sr);
 }

 SLIST_INIT(&wif->scanlist);
}
