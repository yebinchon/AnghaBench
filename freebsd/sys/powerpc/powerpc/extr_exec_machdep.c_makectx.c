
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int * fixreg; int srr0; } ;
struct pcb {int pcb_sp; int pcb_lr; } ;



void
makectx(struct trapframe *tf, struct pcb *pcb)
{

 pcb->pcb_lr = tf->srr0;
 pcb->pcb_sp = tf->fixreg[1];
}
