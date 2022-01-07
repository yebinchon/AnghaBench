
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mesh_route {scalar_t__ mroute_status; } ;
struct wlan_iface {int mesh_routelist; } ;


 scalar_t__ RowStatus_active ;
 int SLIST_REMOVE (int *,struct wlan_mesh_route*,int ,int ) ;
 int free (struct wlan_mesh_route*) ;
 scalar_t__ wlan_mesh_del_route (struct wlan_iface*,struct wlan_mesh_route*) ;
 int wlan_mesh_route ;
 int wr ;

__attribute__((used)) static int
wlan_mesh_delete_route(struct wlan_iface *wif, struct wlan_mesh_route *wmr)
{
 if (wmr->mroute_status == RowStatus_active &&
     wlan_mesh_del_route(wif, wmr) < 0)
  return (-1);

 SLIST_REMOVE(&wif->mesh_routelist, wmr, wlan_mesh_route, wr);
 free(wmr);

 return (0);
}
