
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct TYPE_2__ {int md_spinlock_count; int md_saved_flags; } ;
struct thread {TYPE_1__ td_md; struct pcb* td_frame; struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; int pcb_esi; int pcb_esp; int pcb_ebx; int * pcb_ext; int pcb_gs; scalar_t__ pcb_eip; scalar_t__ pcb_ebp; scalar_t__ pcb_edi; int tf_eflags; struct pcb* pcb_save; } ;


 int PCB_KERNNPX ;
 int PCB_NPXINITDONE ;
 int PCB_NPXUSERINITDONE ;
 int PSL_I ;
 int PSL_KERNEL ;
 int PSL_T ;
 int bcopy (struct pcb*,struct pcb*,int) ;
 int cpu_max_ext_state_size ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;
 struct pcb* get_pcb_user_save_pcb (struct pcb*) ;
 struct pcb* get_pcb_user_save_td (struct thread*) ;
 int rgs () ;
 scalar_t__ setidt_disp ;

void
cpu_copy_thread(struct thread *td, struct thread *td0)
{
 struct pcb *pcb2;


 pcb2 = td->td_pcb;






 bcopy(td0->td_pcb, pcb2, sizeof(*pcb2));
 pcb2->pcb_flags &= ~(PCB_NPXINITDONE | PCB_NPXUSERINITDONE |
     PCB_KERNNPX);
 pcb2->pcb_save = get_pcb_user_save_pcb(pcb2);
 bcopy(get_pcb_user_save_td(td0), pcb2->pcb_save,
     cpu_max_ext_state_size);




 bcopy(td0->td_frame, td->td_frame, sizeof(struct trapframe));







 td->td_frame->tf_eflags &= ~PSL_T;





 pcb2->pcb_edi = 0;
 pcb2->pcb_esi = (int)fork_return;
 pcb2->pcb_ebp = 0;
 pcb2->pcb_esp = (int)td->td_frame - sizeof(void *);
 pcb2->pcb_ebx = (int)td;
 pcb2->pcb_eip = (int)fork_trampoline + setidt_disp;
 pcb2->pcb_gs = rgs();
 pcb2->pcb_ext = ((void*)0);


 td->td_md.md_spinlock_count = 1;
 td->td_md.md_saved_flags = PSL_KERNEL | PSL_I;
}
