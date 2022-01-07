
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int en_mxcsr; } ;
struct TYPE_4__ {TYPE_1__ sv_env; } ;
union savefpu {TYPE_2__ sv_xmm; } ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; } ;


 int ENXIO ;
 int PCB_NPXINITDONE ;
 int PCB_NPXUSERINITDONE ;
 scalar_t__ PCB_USER_FPU (struct pcb*) ;
 struct thread* PCPU_GET (int ) ;
 int bcopy (union savefpu*,int ,int) ;
 scalar_t__ cpu_fxsr ;
 int cpu_mxcsr_mask ;
 int critical_enter () ;
 int critical_exit () ;
 int fnclex () ;
 int fpcurthread ;
 int fpurstor (int ) ;
 int get_pcb_user_save_td (struct thread*) ;
 int hw_float ;
 int npxsetxstate (struct thread*,char*,size_t) ;
 int npxuserinited (struct thread*) ;

int
npxsetregs(struct thread *td, union savefpu *addr, char *xfpustate,
 size_t xfpustate_size)
{
 struct pcb *pcb;
 int error;

 if (!hw_float)
  return (ENXIO);

 if (cpu_fxsr)
  addr->sv_xmm.sv_env.en_mxcsr &= cpu_mxcsr_mask;
 pcb = td->td_pcb;
 error = 0;
 critical_enter();
 if (td == PCPU_GET(fpcurthread) && PCB_USER_FPU(pcb)) {
  error = npxsetxstate(td, xfpustate, xfpustate_size);
  if (error == 0) {
   if (!cpu_fxsr)
    fnclex();
   bcopy(addr, get_pcb_user_save_td(td), sizeof(*addr));
   fpurstor(get_pcb_user_save_td(td));
   pcb->pcb_flags |= PCB_NPXUSERINITDONE | PCB_NPXINITDONE;
  }
 } else {
  error = npxsetxstate(td, xfpustate, xfpustate_size);
  if (error == 0) {
   bcopy(addr, get_pcb_user_save_td(td), sizeof(*addr));
   npxuserinited(td);
  }
 }
 critical_exit();
 return (error);
}
