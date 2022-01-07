
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mesh_route {int dummy; } ;
struct wlan_iface {int mesh_routelist; } ;


 struct wlan_mesh_route* SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct wlan_mesh_route*) ;
 int wr ;

__attribute__((used)) static void
wlan_mesh_free_routes(struct wlan_iface *wif)
{
 struct wlan_mesh_route *wmr;

 while ((wmr = SLIST_FIRST(&wif->mesh_routelist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&wif->mesh_routelist, wr);
  free(wmr);
 }

 SLIST_INIT(&wif->mesh_routelist);
}
