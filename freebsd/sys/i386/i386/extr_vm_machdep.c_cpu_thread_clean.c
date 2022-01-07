
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int * pcb_ext; } ;


 scalar_t__ IOPAGES ;
 int ctob (scalar_t__) ;
 int pmap_trm_free (int *,int ) ;

void
cpu_thread_clean(struct thread *td)
{
 struct pcb *pcb;

 pcb = td->td_pcb;
 if (pcb->pcb_ext != ((void*)0)) {





  pmap_trm_free(pcb->pcb_ext, ctob(IOPAGES + 1));
  pcb->pcb_ext = ((void*)0);
 }
}
