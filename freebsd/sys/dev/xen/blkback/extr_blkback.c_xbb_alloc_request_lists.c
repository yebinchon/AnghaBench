
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_xen_reqlist {int * gnt_handles; int * bounce; struct xbb_softc* xbb; } ;
struct xbb_softc {int max_requests; int max_reqlist_size; int max_reqlist_segments; int reqlist_free_stailq; int dev; struct xbb_xen_reqlist* request_lists; int reqlist_pending_stailq; } ;


 int ENOMEM ;
 int GRANT_REF_INVALID ;
 int M_NOWAIT ;
 int M_XENBLOCKBACK ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct xbb_xen_reqlist*,int ) ;
 int links ;
 void* malloc (int,int ,int) ;
 int xenbus_dev_fatal (int ,int,char*) ;

__attribute__((used)) static int
xbb_alloc_request_lists(struct xbb_softc *xbb)
{
 struct xbb_xen_reqlist *reqlist;
 int i;





 xbb->request_lists = malloc(xbb->max_requests *
  sizeof(*xbb->request_lists), M_XENBLOCKBACK, M_NOWAIT|M_ZERO);
 if (xbb->request_lists == ((void*)0)) {
  xenbus_dev_fatal(xbb->dev, ENOMEM,
      "Unable to allocate request list structures");
  return (ENOMEM);
 }

 STAILQ_INIT(&xbb->reqlist_free_stailq);
 STAILQ_INIT(&xbb->reqlist_pending_stailq);
 for (i = 0; i < xbb->max_requests; i++) {
  int seg;

  reqlist = &xbb->request_lists[i];

  reqlist->xbb = xbb;
  reqlist->gnt_handles = malloc(xbb->max_reqlist_segments *
           sizeof(*reqlist->gnt_handles),
           M_XENBLOCKBACK, M_NOWAIT|M_ZERO);
  if (reqlist->gnt_handles == ((void*)0)) {
   xenbus_dev_fatal(xbb->dev, ENOMEM,
       "Unable to allocate request "
       "grant references");
   return (ENOMEM);
  }

  for (seg = 0; seg < xbb->max_reqlist_segments; seg++)
   reqlist->gnt_handles[seg] = GRANT_REF_INVALID;

  STAILQ_INSERT_TAIL(&xbb->reqlist_free_stailq, reqlist, links);
 }
 return (0);
}
