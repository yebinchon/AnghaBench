
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct trapframe {scalar_t__ srr0; int * fixreg; } ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; scalar_t__ pcb_lastill; int pcb_fpu; } ;


 int PCB_FPREGS ;
 int PCB_FPU ;
 int PCPU_GET (int ) ;
 int SIGFPE ;
 int SIGILL ;
 int XFX ;
 int bzero (int *,int) ;
 int curpmap ;
 int emulate_mfspr (int,int,struct trapframe*) ;
 int emulate_mtspr (int,int,struct trapframe*) ;
 int enable_fpu (struct thread*) ;
 int fpu_emulate (struct trapframe*,int *) ;
 int fuword32 (void*) ;
 int mfpvr () ;
 int pmap_sync_icache (int ,scalar_t__,int) ;
 int powerpc_sync () ;
 int save_fpu (struct thread*) ;

int
ppc_instr_emulate(struct trapframe *frame, struct thread *td)
{
 struct pcb *pcb;
 uint32_t instr;
 int reg, sig;
 int rs, spr;

 instr = fuword32((void *)frame->srr0);
 sig = SIGILL;

 if ((instr & 0xfc1fffff) == 0x7c1f42a6) {
  reg = (instr & ~0xfc1fffff) >> 21;
  frame->fixreg[reg] = mfpvr();
  frame->srr0 += 4;
  return (0);
 } else if ((instr & XFX) == 0x7c0002a6) {
  rs = (instr & 0x3e00000) >> 21;
  spr = (instr & 0x1ff800) >> 16;
  return emulate_mfspr(spr, rs, frame);
 } else if ((instr & XFX) == 0x7c0003a6) {
  rs = (instr & 0x3e00000) >> 21;
  spr = (instr & 0x1ff800) >> 16;
  return emulate_mtspr(spr, rs, frame);
 } else if ((instr & 0xfc000ffe) == 0x7c0004ac) {
  powerpc_sync();
  frame->srr0 += 4;
  return (0);
 }

 pcb = td->td_pcb;
 if (sig == SIGILL) {
  if (pcb->pcb_lastill != frame->srr0) {

   sig = 0;
   pmap_sync_icache(PCPU_GET(curpmap), frame->srr0, 4);
   pcb->pcb_lastill = frame->srr0;
  }
 }

 return (sig);
}
