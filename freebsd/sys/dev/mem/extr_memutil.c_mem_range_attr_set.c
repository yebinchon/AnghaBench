
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mem_range_desc {int dummy; } ;
struct TYPE_5__ {TYPE_1__* mr_op; } ;
struct TYPE_4__ {int (* set ) (TYPE_2__*,struct mem_range_desc*,int*) ;} ;


 int EOPNOTSUPP ;
 TYPE_2__ mem_range_softc ;
 int mr_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int stub1 (TYPE_2__*,struct mem_range_desc*,int*) ;

int
mem_range_attr_set(struct mem_range_desc *mrd, int *arg)
{
 int ret;

 if (mem_range_softc.mr_op == ((void*)0))
  return (EOPNOTSUPP);
 rw_wlock(&mr_lock);
 ret = mem_range_softc.mr_op->set(&mem_range_softc, mrd, arg);
 rw_wunlock(&mr_lock);
 return (ret);
}
