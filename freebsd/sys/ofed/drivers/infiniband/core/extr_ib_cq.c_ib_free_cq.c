
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_cq {int poll_ctx; TYPE_1__* device; int work; int usecnt; } ;
struct TYPE_2__ {int (* destroy_cq ) (struct ib_cq*) ;} ;





 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ atomic_read (int *) ;
 int flush_work (int *) ;
 int stub1 (struct ib_cq*) ;

void
ib_free_cq(struct ib_cq *cq)
{

 if (WARN_ON_ONCE(atomic_read(&cq->usecnt) != 0))
  return;

 switch (cq->poll_ctx) {
 case 130:
  break;
 case 129:
 case 128:
  flush_work(&cq->work);
  break;
 default:
  break;
 }

 (void)cq->device->destroy_cq(cq);
}
