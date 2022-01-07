
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int dummy; } ;


 struct wlan_iface* SLIST_NEXT (struct wlan_iface*,int ) ;
 int w_if ;

__attribute__((used)) static struct wlan_iface *
wlan_next_interface(struct wlan_iface *wif)
{
 if (wif == ((void*)0))
  return (((void*)0));

 return (SLIST_NEXT(wif, w_if));
}
