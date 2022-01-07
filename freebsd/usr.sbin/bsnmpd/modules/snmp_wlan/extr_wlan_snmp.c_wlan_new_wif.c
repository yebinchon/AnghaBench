
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int mode; int state; int status; int wname; scalar_t__ internal; } ;


 int IFNAMSIZ ;
 int RowStatus_notReady ;
 int WlanIfaceOperatingModeType_station ;
 int free (struct wlan_iface*) ;
 scalar_t__ malloc (int) ;
 int memset (struct wlan_iface*,int ,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (int ,char*,int ) ;
 int wlanIfaceState_down ;
 scalar_t__ wlan_add_wif (struct wlan_iface*) ;
 struct wlan_iface* wlan_first_interface () ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;

__attribute__((used)) static struct wlan_iface *
wlan_new_wif(char *wname)
{
 struct wlan_iface *wif;


 for (wif = wlan_first_interface(); wif != ((void*)0);
     wif = wlan_next_interface(wif))
  if (strcmp(wname, wif->wname) == 0) {
   wif->internal = 0;
   return (wif);
  }

 if ((wif = (struct wlan_iface *)malloc(sizeof(*wif))) == ((void*)0))
  return (((void*)0));

 memset(wif, 0, sizeof(struct wlan_iface));
 strlcpy(wif->wname, wname, IFNAMSIZ);
 wif->status = RowStatus_notReady;
 wif->state = wlanIfaceState_down;
 wif->mode = WlanIfaceOperatingModeType_station;

 if (wlan_add_wif(wif) < 0) {
  free(wif);
  return (((void*)0));
 }

 return (wif);
}
