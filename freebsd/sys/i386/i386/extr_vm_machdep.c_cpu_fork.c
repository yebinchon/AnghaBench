
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int tf_edx; int pcb_esi; int pcb_esp; int pcb_ebx; struct proc_ldt* md_ldt; scalar_t__ pcb_ext; scalar_t__ pcb_eip; scalar_t__ pcb_ebp; scalar_t__ pcb_edi; int pcb_cr3; int tf_eflags; scalar_t__ tf_eax; struct trapframe* pcb_save; int pcb_gs; } ;
struct TYPE_2__ {int md_spinlock_count; int md_saved_flags; } ;
struct thread {TYPE_1__ td_md; struct trapframe* td_frame; struct trapframe* td_pcb; struct proc* td_proc; } ;
struct proc_ldt {int ldt_refcnt; int ldt_len; } ;
struct proc {int p_pfsflags; int p_vmspace; struct trapframe p_md; } ;
struct pcb {int tf_edx; int pcb_esi; int pcb_esp; int pcb_ebx; struct proc_ldt* md_ldt; scalar_t__ pcb_ext; scalar_t__ pcb_eip; scalar_t__ pcb_ebp; scalar_t__ pcb_edi; int pcb_cr3; int tf_eflags; scalar_t__ tf_eax; struct pcb* pcb_save; int pcb_gs; } ;
struct mdproc {int tf_edx; int pcb_esi; int pcb_esp; int pcb_ebx; struct proc_ldt* md_ldt; scalar_t__ pcb_ext; scalar_t__ pcb_eip; scalar_t__ pcb_ebp; scalar_t__ pcb_edi; int pcb_cr3; int tf_eflags; scalar_t__ tf_eax; struct mdproc* pcb_save; int pcb_gs; } ;
typedef scalar_t__ caddr_t ;


 struct thread* PCPU_GET (int ) ;
 int PF_FORK ;
 int PSL_C ;
 int PSL_I ;
 int PSL_KERNEL ;
 int PSL_T ;
 int RFMEM ;
 int RFPROC ;
 scalar_t__ VM86_STACK_SPACE ;
 int bcopy (struct trapframe*,struct trapframe*,int) ;
 int cpu_max_ext_state_size ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int dt_lock ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;
 int fpcurthread ;
 struct trapframe* get_pcb_td (struct thread*) ;
 struct trapframe* get_pcb_user_save_pcb (struct trapframe*) ;
 struct trapframe* get_pcb_user_save_td (struct thread*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int npxsave (struct trapframe*) ;
 int panic (char*) ;
 int pmap_get_cr3 (int ) ;
 int rgs () ;
 int set_user_ldt (struct trapframe*) ;
 scalar_t__ setidt_disp ;
 void* user_ldt_alloc (struct trapframe*,int ) ;
 int user_ldt_deref (struct proc_ldt*) ;
 int vmspace_pmap (int ) ;

void
cpu_fork(struct thread *td1, struct proc *p2, struct thread *td2, int flags)
{
 struct proc *p1;
 struct pcb *pcb2;
 struct mdproc *mdp2;

 p1 = td1->td_proc;
 if ((flags & RFPROC) == 0) {
  if ((flags & RFMEM) == 0) {

   struct mdproc *mdp1 = &p1->p_md;
   struct proc_ldt *pldt, *pldt1;

   mtx_lock_spin(&dt_lock);
   if ((pldt1 = mdp1->md_ldt) != ((void*)0) &&
       pldt1->ldt_refcnt > 1) {
    pldt = user_ldt_alloc(mdp1, pldt1->ldt_len);
    if (pldt == ((void*)0))
     panic("could not copy LDT");
    mdp1->md_ldt = pldt;
    set_user_ldt(mdp1);
    user_ldt_deref(pldt1);
   } else
    mtx_unlock_spin(&dt_lock);
  }
  return;
 }


 if (td1 == curthread)
  td1->td_pcb->pcb_gs = rgs();
 critical_enter();
 if (PCPU_GET(fpcurthread) == td1)
  npxsave(td1->td_pcb->pcb_save);
 critical_exit();


 pcb2 = get_pcb_td(td2);
 td2->td_pcb = pcb2;


 bcopy(td1->td_pcb, pcb2, sizeof(*pcb2));


 pcb2->pcb_save = get_pcb_user_save_pcb(pcb2);
 bcopy(get_pcb_user_save_td(td1), get_pcb_user_save_pcb(pcb2),
     cpu_max_ext_state_size);


 mdp2 = &p2->p_md;
 bcopy(&p1->p_md, mdp2, sizeof(*mdp2));
 td2->td_frame = (struct trapframe *)((caddr_t)td2->td_pcb -
     VM86_STACK_SPACE) - 1;
 bcopy(td1->td_frame, td2->td_frame, sizeof(struct trapframe));

 td2->td_frame->tf_eax = 0;
 td2->td_frame->tf_eflags &= ~PSL_C;
 td2->td_frame->tf_edx = 1;
 if ((p1->p_pfsflags & PF_FORK) == 0)
  td2->td_frame->tf_eflags &= ~PSL_T;





 pcb2->pcb_cr3 = pmap_get_cr3(vmspace_pmap(p2->p_vmspace));
 pcb2->pcb_edi = 0;
 pcb2->pcb_esi = (int)fork_return;
 pcb2->pcb_ebp = 0;
 pcb2->pcb_esp = (int)td2->td_frame - sizeof(void *);
 pcb2->pcb_ebx = (int)td2;
 pcb2->pcb_eip = (int)fork_trampoline + setidt_disp;
 pcb2->pcb_ext = 0;


 mtx_lock_spin(&dt_lock);
 if (mdp2->md_ldt != ((void*)0)) {
  if (flags & RFMEM) {
   mdp2->md_ldt->ldt_refcnt++;
  } else {
   mdp2->md_ldt = user_ldt_alloc(mdp2,
       mdp2->md_ldt->ldt_len);
   if (mdp2->md_ldt == ((void*)0))
    panic("could not copy LDT");
  }
 }
 mtx_unlock_spin(&dt_lock);


 td2->td_md.md_spinlock_count = 1;
 td2->td_md.md_saved_flags = PSL_KERNEL | PSL_I;
}
