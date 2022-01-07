
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_veccpu; } ;


 int INT_MAX ;
 int PCPU_SET (int ,int *) ;
 int save_vec_int (struct thread*) ;
 int vecthread ;

void
save_vec(struct thread *td)
{
 struct pcb *pcb;

 pcb = td->td_pcb;

 save_vec_int(td);





 pcb->pcb_veccpu = INT_MAX;
 PCPU_SET(vecthread, ((void*)0));
}
