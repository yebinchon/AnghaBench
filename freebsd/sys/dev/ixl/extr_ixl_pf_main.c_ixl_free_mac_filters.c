
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int ftl; } ;
struct ixl_mac_filter {int dummy; } ;


 int M_DEVBUF ;
 int SLIST_EMPTY (int *) ;
 struct ixl_mac_filter* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct ixl_mac_filter*,int ) ;
 int next ;

void
ixl_free_mac_filters(struct ixl_vsi *vsi)
{
 struct ixl_mac_filter *f;

 while (!SLIST_EMPTY(&vsi->ftl)) {
  f = SLIST_FIRST(&vsi->ftl);
  SLIST_REMOVE_HEAD(&vsi->ftl, next);
  free(f, M_DEVBUF);
 }
}
