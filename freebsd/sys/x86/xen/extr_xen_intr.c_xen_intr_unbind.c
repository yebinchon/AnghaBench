
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xen_intr_handle_t ;
struct xenisrc {int * xi_cookie; int xi_refcount; } ;


 int KASSERT (int ,char*) ;
 int intr_remove_handler (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ refcount_release (int *) ;
 struct xenisrc* xen_intr_isrc (int *) ;
 int xen_intr_isrc_lock ;
 int xen_intr_release_isrc (struct xenisrc*) ;

void
xen_intr_unbind(xen_intr_handle_t *port_handlep)
{
 struct xenisrc *isrc;

 KASSERT(port_handlep != ((void*)0),
     ("NULL xen_intr_handle_t passed to xen_intr_unbind"));

 isrc = xen_intr_isrc(*port_handlep);
 *port_handlep = ((void*)0);
 if (isrc == ((void*)0))
  return;

 mtx_lock(&xen_intr_isrc_lock);
 if (refcount_release(&isrc->xi_refcount) == 0) {
  mtx_unlock(&xen_intr_isrc_lock);
  return;
 }
 mtx_unlock(&xen_intr_isrc_lock);

 if (isrc->xi_cookie != ((void*)0))
  intr_remove_handler(isrc->xi_cookie);
 xen_intr_release_isrc(isrc);
}
