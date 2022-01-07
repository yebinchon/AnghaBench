
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_long ;
struct trapframe {size_t tf_type; int tf_tstate; void* tf_tpc; void* tf_sfar; int tf_sfsr; int tf_tnpc; } ;
struct thread {scalar_t__ td_cowgen; struct trapframe* td_frame; scalar_t__ td_pticks; struct proc* td_proc; } ;
struct proc {scalar_t__ p_cowgen; TYPE_1__* p_sysent; } ;
typedef void* register_t ;
struct TYPE_6__ {int ksi_signo; int ksi_code; int ksi_trapno; void* ksi_addr; } ;
typedef TYPE_2__ ksiginfo_t ;
struct TYPE_5__ {int (* sv_transtrap ) (int,size_t) ;} ;


 int ASI_AIUP ;
 int CTR1 (int ,char*,struct thread*) ;
 int CTR4 (int ,char*,struct thread*,size_t,char*,int ) ;
 int KASSERT (int,char*) ;
 int KDB_WHY_TRAPSIG ;
 int KTR_TRAP ;
 int MMU_SFSR_FV ;
 int MMU_SFSR_GET_ASI (int) ;
 int PCPU_GET (int ) ;
 int SIGTRAP ;
 int TF_DONE (struct trapframe*) ;
 scalar_t__ TRAPF_USERMODE (struct trapframe*) ;
 int TRAP_BRKPT ;
 int TSTATE_PRIV ;
 size_t T_KERNEL ;

 size_t T_MAX ;




 int VM_CNT_INC (int ) ;
 int cache_enable (int ) ;
 int cache_flush () ;
 int copy_fault ;
 int copy_nofault_begin ;
 int copy_nofault_end ;
 struct thread* curthread ;
 int db_watch_trap (struct trapframe*) ;
 scalar_t__ debugger_on_signal ;
 int fas_fault ;
 int fas_nofault_begin ;
 int fas_nofault_end ;
 int fs_fault ;
 int fs_nofault_begin ;
 int fs_nofault_end ;
 int impl ;
 scalar_t__ kdb_active ;
 int kdb_enter (int ,char*) ;
 int kdb_reenter () ;
 int kdb_trap (size_t,int ,struct trapframe*) ;
 int ksiginfo_init_trap (TYPE_2__*) ;
 int panic (char*,size_t) ;
 int pil ;
 int rdpr (int ) ;
 int rwindow_load (struct thread*,struct trapframe*,int) ;
 int rwindow_save (struct thread*) ;
 int stub1 (int,size_t) ;
 int thread_cow_update (struct thread*) ;
 int trap_cecc () ;
 size_t* trap_msg ;
 int trap_pfault (struct thread*,struct trapframe*,int*,int*) ;
 int* trap_sig ;
 int trapsignal (struct thread*,TYPE_2__*) ;
 int userret (struct thread*,struct trapframe*) ;
 int v_trap ;

void
trap(struct trapframe *tf)
{
 struct thread *td;
 struct proc *p;
 int error;
 int sig, ucode;
 register_t addr;
 ksiginfo_t ksi;

 td = curthread;

 CTR4(KTR_TRAP, "trap: %p type=%s (%s) pil=%#lx", td,
     trap_msg[tf->tf_type & ~T_KERNEL],
     (TRAPF_USERMODE(tf) ? "user" : "kernel"), rdpr(pil));

 VM_CNT_INC(v_trap);

 if ((tf->tf_tstate & TSTATE_PRIV) == 0) {
  KASSERT(td != ((void*)0), ("trap: curthread NULL"));
  KASSERT(td->td_proc != ((void*)0), ("trap: curproc NULL"));

  p = td->td_proc;
  td->td_pticks = 0;
  td->td_frame = tf;
  addr = tf->tf_tpc;
  ucode = (int)tf->tf_type;
  if (td->td_cowgen != p->p_cowgen)
   thread_cow_update(td);

  switch (tf->tf_type) {
  case 137:
  case 136:
   addr = tf->tf_sfar;

  case 133:
   if (trap_pfault(td, tf, &sig, &ucode))
    sig = 0;
   break;
  case 135:
   sig = rwindow_load(td, tf, 2);
   break;
  case 134:
   sig = rwindow_load(td, tf, 1);
   break;
  case 129:
   sig = rwindow_save(td);
   break;
  case 140:
   sig = trap_cecc();
   break;
  case 141:
   sig = SIGTRAP;
   ucode = TRAP_BRKPT;
   break;
  default:
   if (tf->tf_type > T_MAX)
    panic("trap: bad trap type %#lx (user)",
        tf->tf_type);
   else if (trap_sig[tf->tf_type] == -1)
    panic("trap: %s (user)",
        trap_msg[tf->tf_type]);
   sig = trap_sig[tf->tf_type];
   break;
  }

  if (sig != 0) {

   if (p->p_sysent->sv_transtrap != ((void*)0)) {
    sig = p->p_sysent->sv_transtrap(sig,
        tf->tf_type);
   }
   if (debugger_on_signal &&
       (sig == 4 || sig == 10 || sig == 11))
    kdb_enter(KDB_WHY_TRAPSIG, "trapsig");
   ksiginfo_init_trap(&ksi);
   ksi.ksi_signo = sig;
   ksi.ksi_code = ucode;
   ksi.ksi_addr = (void *)addr;
   ksi.ksi_trapno = (int)tf->tf_type;
   trapsignal(td, &ksi);
  }

  userret(td, tf);
 } else {
  KASSERT((tf->tf_type & T_KERNEL) != 0,
      ("trap: kernel trap isn't"));

  if (kdb_active) {
   kdb_reenter();
   return;
  }

  switch (tf->tf_type & ~T_KERNEL) {
  case 141:
  case 132:
   error = (kdb_trap(tf->tf_type, 0, tf) == 0);
   TF_DONE(tf);
   break;






  case 137:
  case 136:
  case 133:
   error = !trap_pfault(td, tf, &sig, &ucode);
   break;
  case 138:
  case 131:
   if ((tf->tf_sfsr & MMU_SFSR_FV) != 0 &&
       MMU_SFSR_GET_ASI(tf->tf_sfsr) == ASI_AIUP) {
    if (tf->tf_tpc >= (u_long)copy_nofault_begin &&
        tf->tf_tpc <= (u_long)copy_nofault_end) {
     tf->tf_tpc = (u_long)copy_fault;
     tf->tf_tnpc = tf->tf_tpc + 4;
     error = 0;
     break;
    }
    if (tf->tf_tpc >= (u_long)fs_nofault_begin &&
        tf->tf_tpc <= (u_long)fs_nofault_end) {
     tf->tf_tpc = (u_long)fs_fault;
     tf->tf_tnpc = tf->tf_tpc + 4;
     error = 0;
     break;
    }
   }
   error = 1;
   break;
  case 139:






   if (tf->tf_tpc > (u_long)fas_nofault_begin &&
       tf->tf_tpc < (u_long)fas_nofault_end) {
    cache_flush();
    cache_enable(PCPU_GET(impl));
    tf->tf_tpc = (u_long)fas_fault;
    tf->tf_tnpc = tf->tf_tpc + 4;
    error = 0;
    break;
   }
   error = 1;
   break;
  case 140:
   error = trap_cecc();
   break;
  default:
   error = 1;
   break;
  }

  if (error != 0) {
   tf->tf_type &= ~T_KERNEL;
   if (tf->tf_type > T_MAX)
    panic("trap: bad trap type %#lx (kernel)",
        tf->tf_type);
   panic("trap: %s (kernel)", trap_msg[tf->tf_type]);
  }
 }
 CTR1(KTR_TRAP, "trap: td=%p return", td);
}
