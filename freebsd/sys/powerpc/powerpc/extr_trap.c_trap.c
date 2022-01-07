
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_18__ {int dbcr0; } ;
struct TYPE_19__ {TYPE_7__ booke; } ;
struct trapframe {int exc; int srr1; int srr0; int dar; TYPE_8__ cpu; } ;
struct thread {scalar_t__ td_cowgen; TYPE_6__* td_pcb; int * td_ucred; struct trapframe* td_frame; scalar_t__ td_pticks; int td_name; struct proc* td_proc; } ;
struct proc {scalar_t__ p_cowgen; TYPE_3__* p_sysent; TYPE_4__* p_vmspace; } ;
typedef int register_t ;
struct TYPE_20__ {int ksi_signo; int ksi_code; int ksi_trapno; void* ksi_addr; } ;
typedef TYPE_9__ ksiginfo_t ;
struct TYPE_12__ {int usr_vsid; } ;
struct TYPE_13__ {TYPE_1__ aim; } ;
struct TYPE_16__ {int vscr; } ;
struct TYPE_17__ {int pcb_flags; TYPE_2__ pcb_cpu; TYPE_5__ pcb_vec; } ;
struct TYPE_15__ {int vm_pmap; } ;
struct TYPE_14__ {int (* sv_transtrap ) (int,int) ;} ;


 int ALTIVEC_VSCR_NJ ;
 int BUS_ADRALN ;
 int BUS_OBJERR ;
 int CTR0 (int ,char*) ;
 int CTR3 (int ,char*,int ,int ,char*) ;
 int DBCR0_IC ;
 int DBCR0_IDM ;




 int EXC_DTRACE ;







 int EXC_PGM_ILLEGAL ;
 int EXC_PGM_PRIV ;
 int FPE_FLTINV ;
 int FSCR_DSCR ;
 int FSCR_EBB ;




 int FSCR_IC_MASK ;

 int FSCR_LM ;
 int FSCR_TAR ;
 int ILL_ILLOPC ;
 int ILL_PRVOPC ;
 int KASSERT (int,char*) ;
 int KTR_TRAP ;
 int PCB_CDSCR ;
 int PCB_CFSCR ;
 int PCB_FPU ;
 int PCB_VEC ;
 int PCB_VSX ;
 int PSL_DE ;
 int PSL_PR ;
 int PSL_SE ;
 int SEGMENT_MASK ;
 int SEGV_MAPERR ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int SIGTRAP ;
 int SPR_BESCR ;
 int SPR_DBSR ;
 int SPR_DSCR ;
 int SPR_EBBHR ;
 int SPR_EBBRR ;
 int SPR_FSCR ;
 int SPR_LMRR ;
 int SPR_LMSER ;
 int SPR_TAR ;
 int TRAP_BRKPT ;
 int TRAP_TRACE ;
 int USER_ADDR ;
 int VM_CNT_INC (int ) ;
 scalar_t__ cold ;
 struct thread* curthread ;
 int db_trap_glue (struct trapframe*) ;
 int dtrace_invop_jump_addr (struct trapframe*) ;
 int dtrace_pid_probe_ptr (struct trapframe*) ;
 scalar_t__ dtrace_trap_func (struct trapframe*,int) ;
 int enable_fpu (struct thread*) ;
 int enable_vec (struct thread*) ;
 int fix_unaligned (struct thread*,struct trapframe*) ;
 int frame_is_trap_inst (struct trapframe*) ;
 int fuword32 (void const*) ;
 int handle_onfault (struct trapframe*) ;
 int handle_user_slb_spill (int *,int) ;
 scalar_t__ kdb_active ;
 int kdb_reenter () ;
 int ksiginfo_init_trap (TYPE_9__*) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int normalize_inputs () ;
 int ppc_instr_emulate (struct trapframe*,struct thread*) ;
 int save_fpu (struct thread*) ;
 int save_vec (struct thread*) ;
 scalar_t__ stub1 (struct trapframe*,int) ;
 int stub2 (struct trapframe*) ;
 int stub3 (int,int) ;
 int syscall (struct trapframe*) ;
 int thread_cow_update (struct thread*) ;
 int trap_fatal (struct trapframe*) ;
 int trap_pfault (struct trapframe*,int,int*,int*) ;
 int trapname (int) ;
 int trapsignal (struct thread*,TYPE_9__*) ;
 int userret (struct thread*,struct trapframe*) ;
 int v_trap ;

void
trap(struct trapframe *frame)
{
 struct thread *td;
 struct proc *p;



 int sig, type, user;
 u_int ucode;
 ksiginfo_t ksi;
 register_t fscr;

 VM_CNT_INC(v_trap);
 td = curthread;
 p = td->td_proc;

 type = ucode = frame->exc;
 sig = 0;
 user = frame->srr1 & PSL_PR;

 CTR3(KTR_TRAP, "trap: %s type=%s (%s)", td->td_name,
     trapname(type), user ? "user" : "kernel");
 if (user) {
  td->td_pticks = 0;
  td->td_frame = frame;
  if (td->td_cowgen != p->p_cowgen)
   thread_cow_update(td);


  switch (type) {
  case 141:
  case 138:
   frame->srr1 &= ~PSL_SE;
   sig = SIGTRAP;
   ucode = TRAP_TRACE;
   break;
  case 149:
  case 144:
   if (trap_pfault(frame, 1, &sig, &ucode))
    sig = 0;
   break;

  case 140:
   syscall(frame);
   break;

  case 147:
   KASSERT((td->td_pcb->pcb_flags & PCB_FPU) != PCB_FPU,
       ("FPU already enabled for thread"));
   enable_fpu(td);
   break;

  case 137:
   KASSERT((td->td_pcb->pcb_flags & PCB_VEC) != PCB_VEC,
       ("Altivec already enabled for thread"));
   enable_vec(td);
   break;

  case 133:
   KASSERT((td->td_pcb->pcb_flags & PCB_VSX) != PCB_VSX,
       ("VSX already enabled for thread"));
   if (!(td->td_pcb->pcb_flags & PCB_VEC))
    enable_vec(td);
   if (td->td_pcb->pcb_flags & PCB_FPU)
    save_fpu(td);
   td->td_pcb->pcb_flags |= PCB_VSX;
   enable_fpu(td);
   break;

  case 148:
   fscr = mfspr(SPR_FSCR);
   switch (fscr & FSCR_IC_MASK) {
   case 130:
    CTR0(KTR_TRAP,
        "Hardware Transactional Memory subsystem disabled");
    sig = SIGILL;
    ucode = ILL_ILLOPC;
    break;
   case 132:
    td->td_pcb->pcb_flags |= PCB_CFSCR | PCB_CDSCR;
    fscr |= FSCR_DSCR;
    mtspr(SPR_DSCR, 0);
    break;
   case 131:
    td->td_pcb->pcb_flags |= PCB_CFSCR;
    fscr |= FSCR_EBB;
    mtspr(SPR_EBBHR, 0);
    mtspr(SPR_EBBRR, 0);
    mtspr(SPR_BESCR, 0);
    break;
   case 128:
    td->td_pcb->pcb_flags |= PCB_CFSCR;
    fscr |= FSCR_TAR;
    mtspr(SPR_TAR, 0);
    break;
   case 129:
    td->td_pcb->pcb_flags |= PCB_CFSCR;
    fscr |= FSCR_LM;
    mtspr(SPR_LMRR, 0);
    mtspr(SPR_LMSER, 0);
    break;
   default:
    sig = SIGILL;
    ucode = ILL_ILLOPC;
   }
   mtspr(SPR_FSCR, fscr & ~FSCR_IC_MASK);
   break;
  case 146:
   sig = SIGILL;
   ucode = ILL_ILLOPC;
   break;

  case 136:
  case 135:
  case 134:
   save_vec(td);
   td->td_pcb->pcb_vec.vscr |= ALTIVEC_VSCR_NJ;
   enable_vec(td);
   break;

  case 152:
   if (fix_unaligned(td, frame) != 0) {
    sig = SIGBUS;
    ucode = BUS_ADRALN;
   }
   else
    frame->srr0 += 4;
   break;

  case 151:
   mtspr(SPR_DBSR, mfspr(SPR_DBSR));
   frame->srr1 &= ~PSL_DE;
   frame->cpu.booke.dbcr0 &= ~(DBCR0_IDM | DBCR0_IC);
   sig = SIGTRAP;
   ucode = TRAP_TRACE;
   break;

  case 142:

   if (frame_is_trap_inst(frame)) {
     sig = SIGTRAP;
    ucode = TRAP_BRKPT;
   } else {
    sig = ppc_instr_emulate(frame, td);
    if (sig == SIGILL) {
     if (frame->srr1 & EXC_PGM_PRIV)
      ucode = ILL_PRVOPC;
     else if (frame->srr1 & EXC_PGM_ILLEGAL)
      ucode = ILL_ILLOPC;
    } else if (sig == SIGFPE)
     ucode = FPE_FLTINV;
   }
   break;

  case 143:





   sig = SIGBUS;
   ucode = BUS_OBJERR;
   break;
  default:
   trap_fatal(frame);
  }
 } else {


  KASSERT(cold || td->td_ucred != ((void*)0),
      ("kernel trap doesn't have ucred"));
  switch (type) {
  case 142:
   break;
  case 149:
   if (trap_pfault(frame, 0, ((void*)0), ((void*)0)))
     return;
   break;
  case 143:
   if (handle_onfault(frame))
     return;
   break;
  default:
   break;
  }
  trap_fatal(frame);
 }

 if (sig != 0) {
  if (p->p_sysent->sv_transtrap != ((void*)0))
   sig = (p->p_sysent->sv_transtrap)(sig, type);
  ksiginfo_init_trap(&ksi);
  ksi.ksi_signo = sig;
  ksi.ksi_code = (int) ucode;
  ksi.ksi_addr = (void *)frame->srr0;
  ksi.ksi_trapno = type;
  trapsignal(td, &ksi);
 }

 userret(td, frame);
}
