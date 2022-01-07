
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;
struct lio_tq {int work; int tq; scalar_t__ ctxptr; } ;


 int lio_ms_to_ticks (int) ;
 int lio_process_ordered_list (struct octeon_device*,int ) ;
 int taskqueue_enqueue_timeout (int ,int *,int ) ;

__attribute__((used)) static void
lio_poll_req_completion(void *arg, int pending)
{
 struct lio_tq *ctq = (struct lio_tq *)arg;
 struct octeon_device *oct = (struct octeon_device *)ctq->ctxptr;

 lio_process_ordered_list(oct, 0);
 taskqueue_enqueue_timeout(ctq->tq, &ctq->work, lio_ms_to_ticks(50));
}
