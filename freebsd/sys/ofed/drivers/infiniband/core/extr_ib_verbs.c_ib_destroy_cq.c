
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_cq {TYPE_1__* device; int usecnt; } ;
struct TYPE_2__ {int (* destroy_cq ) (struct ib_cq*) ;} ;


 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ib_cq*) ;

int ib_destroy_cq(struct ib_cq *cq)
{
 if (atomic_read(&cq->usecnt))
  return -EBUSY;

 return cq->device->destroy_cq(cq);
}
