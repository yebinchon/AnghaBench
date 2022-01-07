
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_xen_reqlist {int num_children; int contig_req_list; int nr_segments; int * kva; } ;
struct xbb_softc {int flags; int io_task; int io_taskqueue; int reqlist_free_stailq; int lock; } ;


 int MA_OWNED ;
 int STAILQ_INSERT_TAIL (int *,struct xbb_xen_reqlist*,int ) ;
 int XBBF_RESOURCE_SHORTAGE ;
 int XBBF_SHUTDOWN ;
 int links ;
 int mtx_assert (int *,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int xbb_free_kva (struct xbb_softc*,int *,int ) ;
 int xbb_release_reqs (struct xbb_softc*,int *,int ) ;
 int xbb_shutdown (struct xbb_softc*) ;

__attribute__((used)) static inline void
xbb_release_reqlist(struct xbb_softc *xbb, struct xbb_xen_reqlist *reqlist,
      int wakeup)
{

 mtx_assert(&xbb->lock, MA_OWNED);

 if (wakeup) {
  wakeup = xbb->flags & XBBF_RESOURCE_SHORTAGE;
  xbb->flags &= ~XBBF_RESOURCE_SHORTAGE;
 }

 if (reqlist->kva != ((void*)0))
  xbb_free_kva(xbb, reqlist->kva, reqlist->nr_segments);

 xbb_release_reqs(xbb, &reqlist->contig_req_list, reqlist->num_children);

 STAILQ_INSERT_TAIL(&xbb->reqlist_free_stailq, reqlist, links);

 if ((xbb->flags & XBBF_SHUTDOWN) != 0) {






  xbb_shutdown(xbb);
 }

 if (wakeup != 0)
  taskqueue_enqueue(xbb->io_taskqueue, &xbb->io_task);
}
