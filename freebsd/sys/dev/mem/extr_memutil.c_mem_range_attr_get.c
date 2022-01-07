
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_range_desc {int dummy; } ;
struct TYPE_2__ {int mr_ndesc; int mr_desc; int * mr_op; } ;


 int EOPNOTSUPP ;
 int bcopy (int ,struct mem_range_desc*,int) ;
 TYPE_1__ mem_range_softc ;
 int mr_lock ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;

int
mem_range_attr_get(struct mem_range_desc *mrd, int *arg)
{
 int nd;

 if (mem_range_softc.mr_op == ((void*)0))
  return (EOPNOTSUPP);
 nd = *arg;
 rw_rlock(&mr_lock);
 if (nd == 0)
  *arg = mem_range_softc.mr_ndesc;
 else
  bcopy(mem_range_softc.mr_desc, mrd, nd * sizeof(*mrd));
 rw_runlock(&mr_lock);
 return (0);
}
