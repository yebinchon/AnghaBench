
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_wq {TYPE_1__* device; int usecnt; struct ib_pd* pd; struct ib_cq* cq; } ;
struct ib_pd {int usecnt; } ;
struct ib_cq {int usecnt; } ;
struct TYPE_2__ {int (* destroy_wq ) (struct ib_wq*) ;} ;


 int EBUSY ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ib_wq*) ;

int ib_destroy_wq(struct ib_wq *wq)
{
 int err;
 struct ib_cq *cq = wq->cq;
 struct ib_pd *pd = wq->pd;

 if (atomic_read(&wq->usecnt))
  return -EBUSY;

 err = wq->device->destroy_wq(wq);
 if (!err) {
  atomic_dec(&pd->usecnt);
  atomic_dec(&cq->usecnt);
 }
 return err;
}
