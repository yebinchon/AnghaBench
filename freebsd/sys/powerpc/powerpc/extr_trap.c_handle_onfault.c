
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int srr0; int* fixreg; int cr; } ;
struct thread {TYPE_1__* td_pcb; } ;
typedef int register_t ;
typedef TYPE_2__* jmp_buf ;
struct TYPE_4__ {int* _jb; } ;
struct TYPE_3__ {TYPE_2__** pcb_onfault; } ;


 size_t FAULTBUF_CR ;
 size_t FAULTBUF_LR ;
 size_t FAULTBUF_R1 ;
 size_t FAULTBUF_R14 ;
 size_t FAULTBUF_R2 ;
 int bcopy (int*,int*,int) ;
 struct thread* curthread ;

__attribute__((used)) static int
handle_onfault(struct trapframe *frame)
{
 struct thread *td;
 jmp_buf *fb;

 td = curthread;
 fb = td->td_pcb->pcb_onfault;
 if (fb != ((void*)0)) {
  frame->srr0 = (*fb)->_jb[FAULTBUF_LR];
  frame->fixreg[1] = (*fb)->_jb[FAULTBUF_R1];
  frame->fixreg[2] = (*fb)->_jb[FAULTBUF_R2];
  frame->fixreg[3] = 1;
  frame->cr = (*fb)->_jb[FAULTBUF_CR];
  bcopy(&(*fb)->_jb[FAULTBUF_R14], &frame->fixreg[14],
      18 * sizeof(register_t));
  td->td_pcb->pcb_onfault = ((void*)0);
  return (1);
 }
 return (0);
}
