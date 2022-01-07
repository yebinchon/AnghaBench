
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mesh_route {int dummy; } ;


 int free (struct wlan_mesh_route*) ;

void
wlan_mesh_free_route(struct wlan_mesh_route *wmr)
{
 free(wmr);
}
