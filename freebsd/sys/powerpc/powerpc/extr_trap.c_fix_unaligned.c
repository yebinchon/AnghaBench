
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef double uint32_t ;
struct TYPE_10__ {int dsisr; } ;
struct TYPE_9__ {int esr; } ;
struct TYPE_11__ {TYPE_3__ aim; TYPE_2__ booke; } ;
struct trapframe {scalar_t__ dar; TYPE_4__ cpu; scalar_t__ srr0; int * fixreg; } ;
struct thread {TYPE_7__* td_pcb; } ;
typedef int inst ;
struct TYPE_13__ {TYPE_5__* fpr; } ;
struct TYPE_8__ {int ** vr; } ;
struct TYPE_14__ {TYPE_6__ pcb_fpu; TYPE_1__ pcb_vec; } ;
struct TYPE_12__ {double fpr; } ;


 int ESR_SPE ;
 int ESR_ST ;
 int EXC_ALI_INST_RST (double) ;

 int EXC_ALI_OPCODE_INDICATOR (int ) ;
 int EXC_ALI_RST (int ) ;

 struct thread* PCPU_GET (struct thread*) ;
 scalar_t__ copyin (void*,double*,int) ;
 scalar_t__ copyout (double*,void*,int) ;
 int enable_fpu (struct thread*) ;
 int enable_vec (struct thread*) ;
 int save_fpu (struct thread*) ;
 int save_vec (struct thread*) ;
 struct thread* vecthread ;

__attribute__((used)) static int
fix_unaligned(struct thread *td, struct trapframe *frame)
{
 struct thread *fputhread;



 int indicator, reg;
 double *fpr;
 indicator = EXC_ALI_OPCODE_INDICATOR(frame->cpu.aim.dsisr);


 switch (indicator) {
 case 129:
 case 128:





  reg = EXC_ALI_RST(frame->cpu.aim.dsisr);

  fpr = &td->td_pcb->pcb_fpu.fpr[reg].fpr;
  fputhread = PCPU_GET(fputhread);





  if (fputhread != td) {
   if (fputhread)
    save_fpu(fputhread);
   enable_fpu(td);
  }
  save_fpu(td);

  if (indicator == 129) {
   if (copyin((void *)frame->dar, fpr,
       sizeof(double)) != 0)
    return (-1);
   enable_fpu(td);
  } else {
   if (copyout(fpr, (void *)frame->dar,
       sizeof(double)) != 0)
    return (-1);
  }
  return (0);
  break;
 }


 return (-1);
}
