
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_xo; } ;
struct TYPE_3__ {scalar_t__ i_opcd; } ;
union instr {int i_int; TYPE_2__ i_x; TYPE_1__ i_any; } ;
struct trapframe {scalar_t__ srr0; } ;
struct fpu {int dummy; } ;
struct fpemu {scalar_t__ fe_cx; struct fpu* fe_fpstate; } ;


 int DPRINTF (int,char*) ;


 int FPE_EX ;
 int KDB_WHY_UNSET ;

 scalar_t__ OPC31_TW ;
 scalar_t__ OPC_TWI ;
 scalar_t__ OPC_integer_31 ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int SIGTRAP ;
 scalar_t__ copyin (void*,int*,int) ;
 int fpe_debug ;
 int fpu_execute (struct trapframe*,struct fpemu*,union instr*) ;
 int kdb_enter (int ,char*) ;
 int opc_disasm (scalar_t__,int) ;
 int printf (char*,...) ;

int
fpu_emulate(struct trapframe *frame, struct fpu *fpf)
{
 union instr insn;
 struct fpemu fe;
 int sig;


 fe.fe_fpstate = fpf;
 fe.fe_cx = 0;



 if (copyin((void *) (frame->srr0), &insn.i_int, sizeof (insn.i_int))) {



  return SIGSEGV;
 }

 DPRINTF(FPE_EX, ("fpu_emulate: emulating insn %x at %p\n",
     insn.i_int, (void *)frame->srr0));


 if ((insn.i_any.i_opcd == OPC_TWI) ||
     ((insn.i_any.i_opcd == OPC_integer_31) &&
     (insn.i_x.i_xo == OPC31_TW))) {

  DPRINTF(FPE_EX, ("fpu_emulate: SIGTRAP\n"));
  return (SIGTRAP);
 }
 sig = 0;
 switch (fpu_execute(frame, &fe, &insn)) {
 case 0:
  DPRINTF(FPE_EX, ("fpu_emulate: success\n"));
  frame->srr0 += 4;
  break;

 case 129:
  DPRINTF(FPE_EX, ("fpu_emulate: SIGFPE\n"));
  sig = SIGFPE;
  break;

 case 130:
  DPRINTF(FPE_EX, ("fpu_emulate: SIGSEGV\n"));
  sig = SIGSEGV;
  break;

 case 128:
 default:
  DPRINTF(FPE_EX, ("fpu_emulate: SIGILL\n"));







  sig = SIGILL;




  break;
 }

 return (sig);
}
