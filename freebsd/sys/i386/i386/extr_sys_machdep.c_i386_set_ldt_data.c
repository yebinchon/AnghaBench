
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union descriptor {int dummy; } descriptor ;
typedef int uint64_t ;
struct thread {TYPE_1__* td_proc; } ;
struct proc_ldt {scalar_t__ ldt_base; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
struct TYPE_2__ {struct mdproc p_md; } ;


 int MA_OWNED ;
 int atomic_store_rel_64 (int *,int ) ;
 int dt_lock ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
i386_set_ldt_data(struct thread *td, int start, int num,
    union descriptor *descs)
{
 struct mdproc *mdp;
 struct proc_ldt *pldt;
 uint64_t *dst, *src;
 int i;

 mtx_assert(&dt_lock, MA_OWNED);

 mdp = &td->td_proc->p_md;
 pldt = mdp->md_ldt;
 dst = (uint64_t *)(pldt->ldt_base);
 src = (uint64_t *)descs;






 for (i = 0; i < num; i++)
  atomic_store_rel_64(&dst[start + i], src[i]);
 return (0);
}
