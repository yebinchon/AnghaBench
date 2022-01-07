
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_fpcpu; } ;


 int INT_MAX ;
 int PCPU_SET (int ,int *) ;
 int fputhread ;
 int save_fpu_int (struct thread*) ;

void
save_fpu(struct thread *td)
{
 struct pcb *pcb;

 pcb = td->td_pcb;

 save_fpu_int(td);





 pcb->pcb_fpcpu = INT_MAX;
 PCPU_SET(fputhread, ((void*)0));
}
