
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct xbb_xen_reqlist {scalar_t__ next_contig_sector; int operation; scalar_t__ nr_segments; } ;
struct TYPE_12__ {scalar_t__ req_cons; TYPE_1__* sring; } ;
struct TYPE_11__ {TYPE_8__ common; int x86_64; int x86_32; int native; } ;
struct xbb_softc {int abi; scalar_t__ no_coalesce_reqs; scalar_t__ max_reqlist_segments; int total_dispatch; int normal_dispatch; int forced_dispatch; int reqlist_pending_stailq; int reqs_received; TYPE_3__ rings; } ;
struct blkif_x86_64_request {int dummy; } ;
struct blkif_x86_32_request {int dummy; } ;
struct TYPE_10__ {scalar_t__ sector_number; int operation; scalar_t__ nr_segments; } ;
typedef TYPE_2__ blkif_request_t ;
typedef TYPE_3__ blkif_back_rings_t ;
struct TYPE_9__ {scalar_t__ req_prod; } ;
typedef scalar_t__ RING_IDX ;





 void* RING_GET_REQUEST (int *,scalar_t__) ;
 scalar_t__ RING_REQUEST_CONS_OVERFLOW (TYPE_8__*,scalar_t__) ;
 struct xbb_xen_reqlist* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_HEAD (int *,struct xbb_xen_reqlist*,int ) ;
 struct xbb_xen_reqlist* STAILQ_LAST (int *,int ,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int blkif_get_x86_32_req (TYPE_2__*,struct blkif_x86_32_request*) ;
 int blkif_get_x86_64_req (TYPE_2__*,struct blkif_x86_64_request*) ;
 int links ;
 int panic (char*) ;
 int rmb () ;
 int xbb_count_sects (TYPE_2__*) ;
 int xbb_dispatch_io (struct xbb_softc*,struct xbb_xen_reqlist*) ;
 int xbb_get_resources (struct xbb_softc*,struct xbb_xen_reqlist**,TYPE_2__*,scalar_t__) ;
 int xbb_xen_reqlist ;

__attribute__((used)) static void
xbb_run_queue(void *context, int pending)
{
 struct xbb_softc *xbb;
 blkif_back_rings_t *rings;
 RING_IDX rp;
 uint64_t cur_sector;
 int cur_operation;
 struct xbb_xen_reqlist *reqlist;


 xbb = (struct xbb_softc *)context;
 rings = &xbb->rings;
 for (;;) {
  int retval;






  reqlist = STAILQ_LAST(&xbb->reqlist_pending_stailq,
          xbb_xen_reqlist, links);
  if (reqlist != ((void*)0)) {
   cur_sector = reqlist->next_contig_sector;
   cur_operation = reqlist->operation;
  } else {
   cur_operation = 0;
   cur_sector = 0;
  }





  rp = rings->common.sring->req_prod;


  rmb();
  while (rings->common.req_cons != rp
      && RING_REQUEST_CONS_OVERFLOW(&rings->common,
        rings->common.req_cons) == 0){
   blkif_request_t ring_req_storage;
   blkif_request_t *ring_req;
   int cur_size;

   switch (xbb->abi) {
   case 130:
    ring_req = RING_GET_REQUEST(&xbb->rings.native,
        rings->common.req_cons);
    break;
   case 129:
   {
    struct blkif_x86_32_request *ring_req32;

    ring_req32 = RING_GET_REQUEST(
        &xbb->rings.x86_32, rings->common.req_cons);
    blkif_get_x86_32_req(&ring_req_storage,
           ring_req32);
    ring_req = &ring_req_storage;
    break;
   }
   case 128:
   {
    struct blkif_x86_64_request *ring_req64;

    ring_req64 =RING_GET_REQUEST(&xbb->rings.x86_64,
        rings->common.req_cons);
    blkif_get_x86_64_req(&ring_req_storage,
           ring_req64);
    ring_req = &ring_req_storage;
    break;
   }
   default:
    panic("Unexpected blkif protocol ABI.");

   }
   if ((reqlist != ((void*)0))
    && ((xbb->no_coalesce_reqs != 0)
     || ((xbb->no_coalesce_reqs == 0)
      && ((ring_req->sector_number != cur_sector)
       || (ring_req->operation != cur_operation)
       || ((ring_req->nr_segments + reqlist->nr_segments) >
            xbb->max_reqlist_segments))))) {
    reqlist = ((void*)0);
   }







   retval = xbb_get_resources(xbb, &reqlist, ring_req,
         xbb->rings.common.req_cons);

   if (retval != 0) {





    break;
   }
   xbb->rings.common.req_cons++;
   xbb->reqs_received++;

   cur_size = xbb_count_sects(ring_req);
   cur_sector = ring_req->sector_number + cur_size;
   reqlist->next_contig_sector = cur_sector;
   cur_operation = ring_req->operation;
  }


  reqlist = STAILQ_FIRST(&xbb->reqlist_pending_stailq);
  if (reqlist == ((void*)0)) {




   break;
  }





  STAILQ_REMOVE_HEAD(&xbb->reqlist_pending_stailq, links);

  retval = xbb_dispatch_io(xbb, reqlist);
  if (retval != 0) {







   STAILQ_INSERT_HEAD(&xbb->reqlist_pending_stailq,
        reqlist, links);
   break;
  } else {
   reqlist = STAILQ_FIRST(&xbb->reqlist_pending_stailq);

   if (reqlist != ((void*)0))
    xbb->forced_dispatch++;
   else
    xbb->normal_dispatch++;

   xbb->total_dispatch++;
  }
 }
}
