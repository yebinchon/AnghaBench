
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rsp_prod_pvt; scalar_t__ req_cons; } ;
struct TYPE_5__ {TYPE_2__ common; } ;
struct xbb_softc {scalar_t__ reqs_queued_for_completion; int reqs_completed; TYPE_1__ rings; int lock; } ;


 int MA_OWNED ;
 int RING_FINAL_CHECK_FOR_REQUESTS (TYPE_2__*,int) ;
 scalar_t__ RING_HAS_UNCONSUMED_REQUESTS (TYPE_2__*) ;
 int RING_PUSH_RESPONSES_AND_CHECK_NOTIFY (TYPE_2__*,int) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
xbb_push_responses(struct xbb_softc *xbb, int *run_taskqueue, int *notify)
{
 int more_to_do;




 mtx_assert(&xbb->lock, MA_OWNED);

 more_to_do = 0;

 RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(&xbb->rings.common, *notify);

 if (xbb->rings.common.rsp_prod_pvt == xbb->rings.common.req_cons) {






  RING_FINAL_CHECK_FOR_REQUESTS(&xbb->rings.common, more_to_do);
 } else if (RING_HAS_UNCONSUMED_REQUESTS(&xbb->rings.common)) {

  more_to_do = 1;
 }

 xbb->reqs_completed += xbb->reqs_queued_for_completion;
 xbb->reqs_queued_for_completion = 0;

 *run_taskqueue = more_to_do;
}
