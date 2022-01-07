
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mac_mac {int dummy; } ;


 int free (struct wlan_mac_mac*) ;

void
wlan_mac_free_mac(struct wlan_mac_mac *wmm)
{
 free(wmm);
}
