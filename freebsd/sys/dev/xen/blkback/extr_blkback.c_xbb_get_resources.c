
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nr_segments; int operation; int id; int sector_number; } ;
struct xbb_xen_reqlist {int nr_segments; int num_children; int contig_req_list; int ds_t0; TYPE_1__* ring_req; TYPE_1__ ring_req_storage; int operation; int id; int req_ring_idx; struct xbb_xen_reqlist* reqlist; int starting_sector_number; } ;
struct xbb_xen_req {int nr_segments; int num_children; int contig_req_list; int ds_t0; TYPE_1__* ring_req; TYPE_1__ ring_req_storage; int operation; int id; int req_ring_idx; struct xbb_xen_req* reqlist; int starting_sector_number; } ;
struct xbb_softc {int flags; scalar_t__ abi; int lock; int request_shortages; int xbb_stats_in; int reqlist_pending_stailq; } ;
typedef TYPE_1__ blkif_request_t ;
typedef int RING_IDX ;


 scalar_t__ BLKIF_PROTOCOL_NATIVE ;
 int STAILQ_INSERT_TAIL (int *,struct xbb_xen_reqlist*,int ) ;
 int XBBF_RESOURCE_SHORTAGE ;
 int XBBF_SHUTDOWN ;
 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 int binuptime (int *) ;
 int devstat_start_transaction (int ,int *) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct xbb_xen_reqlist* xbb_get_req (struct xbb_softc*) ;
 struct xbb_xen_reqlist* xbb_get_reqlist (struct xbb_softc*) ;
 int xbb_release_req (struct xbb_softc*,struct xbb_xen_reqlist*) ;
 int xbb_release_reqlist (struct xbb_softc*,struct xbb_xen_reqlist*,int ) ;

__attribute__((used)) static int
xbb_get_resources(struct xbb_softc *xbb, struct xbb_xen_reqlist **reqlist,
    blkif_request_t *ring_req, RING_IDX ring_idx)
{
 struct xbb_xen_reqlist *nreqlist;
 struct xbb_xen_req *nreq;

 nreqlist = ((void*)0);
 nreq = ((void*)0);

 mtx_lock(&xbb->lock);





 if ((xbb->flags & XBBF_SHUTDOWN) != 0) {
  mtx_unlock(&xbb->lock);
  return (1);
 }




 if (*reqlist == ((void*)0)) {
  nreqlist = xbb_get_reqlist(xbb);
  if (nreqlist == ((void*)0))
   goto bailout_error;
 }


 nreq = xbb_get_req(xbb);
 if (nreq == ((void*)0))
  goto bailout_error;

 mtx_unlock(&xbb->lock);

 if (*reqlist == ((void*)0)) {
  *reqlist = nreqlist;
  nreqlist->operation = ring_req->operation;
  nreqlist->starting_sector_number = ring_req->sector_number;
  STAILQ_INSERT_TAIL(&xbb->reqlist_pending_stailq, nreqlist,
       links);
 }

 nreq->reqlist = *reqlist;
 nreq->req_ring_idx = ring_idx;
 nreq->id = ring_req->id;
 nreq->operation = ring_req->operation;

 if (xbb->abi != BLKIF_PROTOCOL_NATIVE) {
  bcopy(ring_req, &nreq->ring_req_storage, sizeof(*ring_req));
  nreq->ring_req = &nreq->ring_req_storage;
 } else {
  nreq->ring_req = ring_req;
 }

 binuptime(&nreq->ds_t0);
 devstat_start_transaction(xbb->xbb_stats_in, &nreq->ds_t0);
 STAILQ_INSERT_TAIL(&(*reqlist)->contig_req_list, nreq, links);
 (*reqlist)->num_children++;
 (*reqlist)->nr_segments += ring_req->nr_segments;

 return (0);

bailout_error:






 xbb->flags |= XBBF_RESOURCE_SHORTAGE;
 xbb->request_shortages++;

 if (nreq != ((void*)0))
  xbb_release_req(xbb, nreq);

 if (nreqlist != ((void*)0))
  xbb_release_reqlist(xbb, nreqlist, 0);

 mtx_unlock(&xbb->lock);

 return (1);
}
