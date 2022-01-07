
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_sp; int tf_tpc; } ;
struct pcb {int pcb_sp; int pcb_pc; } ;



void
makectx(struct trapframe *tf, struct pcb *pcb)
{

 pcb->pcb_pc = tf->tf_tpc;
 pcb->pcb_sp = tf->tf_sp;
}
