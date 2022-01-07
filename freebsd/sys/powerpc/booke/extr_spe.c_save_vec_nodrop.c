
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct TYPE_4__ {int ** vr; } ;
struct pcb {TYPE_2__ pcb_vec; } ;
struct TYPE_3__ {int * fixreg; } ;


 struct thread* PCPU_GET (int ) ;
 int save_vec_int (struct thread*) ;
 int vecthread ;

void
save_vec_nodrop(struct thread *td)
{
 struct thread *vtd;
 struct pcb *pcb;
 int i;

 vtd = PCPU_GET(vecthread);
 if (td == vtd) {
  save_vec_int(td);
 }

 pcb = td->td_pcb;

 for (i = 0; i < 32; i++) {
  pcb->pcb_vec.vr[i][1] =
      td->td_frame ? td->td_frame->fixreg[i] : 0;
 }
}
