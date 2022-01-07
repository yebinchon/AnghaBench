
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {TYPE_3__* td_pcb; TYPE_2__* td_proc; } ;
struct TYPE_6__ {int pcb_gs; } ;
struct TYPE_4__ {scalar_t__ md_ldt; } ;
struct TYPE_5__ {TYPE_1__ p_md; } ;


 int _udatasel ;
 int dt_lock ;
 int load_gs (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int user_ldt_free (struct thread*) ;

void
cpu_exit(struct thread *td)
{





 mtx_lock_spin(&dt_lock);
 if (td->td_proc->p_md.md_ldt) {
  td->td_pcb->pcb_gs = _udatasel;
  load_gs(_udatasel);
  user_ldt_free(td);
 } else
  mtx_unlock_spin(&dt_lock);
}
