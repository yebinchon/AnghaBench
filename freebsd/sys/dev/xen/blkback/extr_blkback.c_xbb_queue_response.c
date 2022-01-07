
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xbb_xen_req {int operation; int id; } ;
struct TYPE_6__ {int rsp_prod_pvt; } ;
struct TYPE_9__ {int rsp_prod_pvt; } ;
struct TYPE_7__ {TYPE_1__ common; TYPE_5__ x86_64; TYPE_5__ x86_32; TYPE_5__ native; } ;
struct xbb_softc {int abi; int reqs_queued_for_completion; TYPE_2__ rings; int reqs_completed_with_error; int lock; } ;
struct TYPE_8__ {int status; int operation; int id; } ;
typedef TYPE_3__ blkif_response_t ;





 int BLKIF_RSP_OKAY ;
 int MA_OWNED ;
 TYPE_3__* RING_GET_RESPONSE (TYPE_5__*,int ) ;
 int mtx_assert (int *,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
xbb_queue_response(struct xbb_softc *xbb, struct xbb_xen_req *req, int status)
{
 blkif_response_t *resp;
 mtx_assert(&xbb->lock, MA_OWNED);






 switch (xbb->abi) {
 case 130:
  resp = RING_GET_RESPONSE(&xbb->rings.native,
      xbb->rings.native.rsp_prod_pvt);
  break;
 case 129:
  resp = (blkif_response_t *)
      RING_GET_RESPONSE(&xbb->rings.x86_32,
          xbb->rings.x86_32.rsp_prod_pvt);
  break;
 case 128:
  resp = (blkif_response_t *)
      RING_GET_RESPONSE(&xbb->rings.x86_64,
          xbb->rings.x86_64.rsp_prod_pvt);
  break;
 default:
  panic("Unexpected blkif protocol ABI.");
 }

 resp->id = req->id;
 resp->operation = req->operation;
 resp->status = status;

 if (status != BLKIF_RSP_OKAY)
  xbb->reqs_completed_with_error++;

 xbb->rings.common.rsp_prod_pvt++;

 xbb->reqs_queued_for_completion++;

}
