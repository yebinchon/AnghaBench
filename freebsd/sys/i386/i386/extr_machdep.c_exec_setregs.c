
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct trapframe {int tf_eflags; int tf_ebx; int tf_cs; void* tf_fs; void* tf_es; void* tf_ds; void* tf_ss; int tf_esp; int tf_eip; } ;
struct thread {TYPE_3__* td_proc; struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {int pcb_flags; int pcb_initial_npxcw; scalar_t__ pcb_dr7; scalar_t__ pcb_dr6; scalar_t__ pcb_dr3; scalar_t__ pcb_dr2; scalar_t__ pcb_dr1; scalar_t__ pcb_dr0; void* pcb_gs; } ;
struct image_params {int ps_strings; int entry_addr; } ;
typedef int register_t ;
struct TYPE_8__ {scalar_t__ sv_psstrings; } ;
struct TYPE_5__ {int * md_ldt; } ;
struct TYPE_7__ {TYPE_2__* p_sysent; TYPE_1__ p_md; } ;
struct TYPE_6__ {scalar_t__ sv_psstrings; } ;


 int PCB_DBREGS ;
 int PSL_T ;
 int PSL_USER ;
 int __INITIAL_NPXCW__ ;
 int _ucodesel ;
 void* _udatasel ;
 int bzero (char*,int) ;
 struct pcb* curpcb ;
 int dt_lock ;
 TYPE_4__ elf32_freebsd_sysvec ;
 int fpstate_drop (struct thread*) ;
 int load_gs (void*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int reset_dbregs () ;
 int set_fsbase (struct thread*,int ) ;
 int set_gsbase (struct thread*,int ) ;
 int setup_priv_lcall_gate (TYPE_3__*) ;
 int user_ldt_free (struct thread*) ;

void
exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct trapframe *regs;
 struct pcb *pcb;
 register_t saved_eflags;

 regs = td->td_frame;
 pcb = td->td_pcb;


 pcb->pcb_gs = _udatasel;
 load_gs(_udatasel);

 mtx_lock_spin(&dt_lock);
 if (td->td_proc->p_md.md_ldt != ((void*)0))
  user_ldt_free(td);
 else
  mtx_unlock_spin(&dt_lock);
 set_fsbase(td, 0);
 set_gsbase(td, 0);


 saved_eflags = regs->tf_eflags & PSL_T;
 bzero((char *)regs, sizeof(struct trapframe));
 regs->tf_eip = imgp->entry_addr;
 regs->tf_esp = stack;
 regs->tf_eflags = PSL_USER | saved_eflags;
 regs->tf_ss = _udatasel;
 regs->tf_ds = _udatasel;
 regs->tf_es = _udatasel;
 regs->tf_fs = _udatasel;
 regs->tf_cs = _ucodesel;


 regs->tf_ebx = imgp->ps_strings;





        if (pcb->pcb_flags & PCB_DBREGS) {
                pcb->pcb_dr0 = 0;
                pcb->pcb_dr1 = 0;
                pcb->pcb_dr2 = 0;
                pcb->pcb_dr3 = 0;
                pcb->pcb_dr6 = 0;
                pcb->pcb_dr7 = 0;
                if (pcb == curpcb) {





          reset_dbregs();
                }
  pcb->pcb_flags &= ~PCB_DBREGS;
        }

 pcb->pcb_initial_npxcw = __INITIAL_NPXCW__;





 fpstate_drop(td);
}
