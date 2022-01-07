
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_xen_reqlist {int contig_req_list; scalar_t__ nr_segments; scalar_t__ num_children; scalar_t__ residual_512b_sectors; int status; int * kva; int flags; } ;
struct xbb_softc {int reqlist_free_stailq; int lock; } ;


 int BLKIF_RSP_OKAY ;
 int MA_OWNED ;
 struct xbb_xen_reqlist* STAILQ_FIRST (int *) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int XBB_REQLIST_NONE ;
 int links ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static inline struct xbb_xen_reqlist *
xbb_get_reqlist(struct xbb_softc *xbb)
{
 struct xbb_xen_reqlist *reqlist;

 reqlist = ((void*)0);

 mtx_assert(&xbb->lock, MA_OWNED);

 if ((reqlist = STAILQ_FIRST(&xbb->reqlist_free_stailq)) != ((void*)0)) {

  STAILQ_REMOVE_HEAD(&xbb->reqlist_free_stailq, links);
  reqlist->flags = XBB_REQLIST_NONE;
  reqlist->kva = ((void*)0);
  reqlist->status = BLKIF_RSP_OKAY;
  reqlist->residual_512b_sectors = 0;
  reqlist->num_children = 0;
  reqlist->nr_segments = 0;
  STAILQ_INIT(&reqlist->contig_req_list);
 }

 return (reqlist);
}
