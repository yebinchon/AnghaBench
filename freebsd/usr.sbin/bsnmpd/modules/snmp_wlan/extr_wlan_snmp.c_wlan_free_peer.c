
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_peer {int dummy; } ;


 int free (struct wlan_peer*) ;

void
wlan_free_peer(struct wlan_peer *wip)
{
 free(wip);
}
