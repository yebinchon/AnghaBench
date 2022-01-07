
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int u_long ;
struct tte {int tte_data; } ;
struct TYPE_5__ {int tte_list; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 int PMAP_TS_REFERENCED_MAX ;
 struct tte* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct tte*,int ) ;
 struct tte* TAILQ_NEXT (struct tte*,int ) ;
 int TAILQ_REMOVE (int *,struct tte*,int ) ;
 int TD_PV ;
 int TD_REF ;
 int TD_W ;
 int VPO_UNMANAGED ;
 int atomic_clear_long (int*,int) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int tte_link ;
 int tte_list_global_lock ;
 int vm_page_dirty (TYPE_2__*) ;

int
pmap_ts_referenced(vm_page_t m)
{
 struct tte *tpf;
 struct tte *tpn;
 struct tte *tp;
 u_long data;
 int count;

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_ts_referenced: page %p is not managed", m));
 count = 0;
 rw_wlock(&tte_list_global_lock);
 if ((tp = TAILQ_FIRST(&m->md.tte_list)) != ((void*)0)) {
  tpf = tp;
  do {
   tpn = TAILQ_NEXT(tp, tte_link);
   TAILQ_REMOVE(&m->md.tte_list, tp, tte_link);
   TAILQ_INSERT_TAIL(&m->md.tte_list, tp, tte_link);
   if ((tp->tte_data & TD_PV) == 0)
    continue;
   data = atomic_clear_long(&tp->tte_data, TD_REF);
   if ((data & TD_W) != 0)
    vm_page_dirty(m);
   if ((data & TD_REF) != 0 && ++count >=
       PMAP_TS_REFERENCED_MAX)
    break;
  } while ((tp = tpn) != ((void*)0) && tp != tpf);
 }
 rw_wunlock(&tte_list_global_lock);
 return (count);
}
