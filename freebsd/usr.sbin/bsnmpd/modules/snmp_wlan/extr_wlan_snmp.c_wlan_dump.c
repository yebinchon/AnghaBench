
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int wname; } ;


 int LOG_ERR ;
 int syslog (int ,char*,int ) ;
 struct wlan_iface* wlan_first_interface () ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;

__attribute__((used)) static void
wlan_dump(void)
{

 struct wlan_iface *wif;

 for (wif = wlan_first_interface(); wif != ((void*)0);
     wif = wlan_next_interface(wif))
  syslog(LOG_ERR, "wlan iface %s", wif->wname);
}
