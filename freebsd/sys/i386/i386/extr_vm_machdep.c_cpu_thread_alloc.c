
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xstate_hdr {int xstate_bv; } ;
struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_save; int * pcb_ext; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ VM86_STACK_SPACE ;
 int bzero (struct xstate_hdr*,int) ;
 struct pcb* get_pcb_td (struct thread*) ;
 scalar_t__ get_pcb_user_save_pcb (struct pcb*) ;
 scalar_t__ use_xsave ;
 int xsave_mask ;

void
cpu_thread_alloc(struct thread *td)
{
 struct pcb *pcb;
 struct xstate_hdr *xhdr;

 td->td_pcb = pcb = get_pcb_td(td);
 td->td_frame = (struct trapframe *)((caddr_t)pcb -
     VM86_STACK_SPACE) - 1;
 pcb->pcb_ext = ((void*)0);
 pcb->pcb_save = get_pcb_user_save_pcb(pcb);
 if (use_xsave) {
  xhdr = (struct xstate_hdr *)(pcb->pcb_save + 1);
  bzero(xhdr, sizeof(*xhdr));
  xhdr->xstate_bv = xsave_mask;
 }
}
