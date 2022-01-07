
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int sp; int pc; int ra; } ;
struct pcb {int * pcb_context; } ;


 size_t PCB_REG_PC ;
 size_t PCB_REG_RA ;
 size_t PCB_REG_SP ;

void
makectx(struct trapframe *tf, struct pcb *pcb)
{

 pcb->pcb_context[PCB_REG_RA] = tf->ra;
 pcb->pcb_context[PCB_REG_PC] = tf->pc;
 pcb->pcb_context[PCB_REG_SP] = tf->sp;
}
