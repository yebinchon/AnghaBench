
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_esp; int tf_cs; int tf_eip; int tf_ebx; int tf_ebp; int tf_esi; int tf_edi; } ;
struct pcb {int pcb_esp; int pcb_gs; int pcb_eip; int pcb_ebx; int pcb_ebp; int pcb_esi; int pcb_edi; } ;


 scalar_t__ ISPL (int ) ;
 int rgs () ;

void
makectx(struct trapframe *tf, struct pcb *pcb)
{

 pcb->pcb_edi = tf->tf_edi;
 pcb->pcb_esi = tf->tf_esi;
 pcb->pcb_ebp = tf->tf_ebp;
 pcb->pcb_ebx = tf->tf_ebx;
 pcb->pcb_eip = tf->tf_eip;
 pcb->pcb_esp = (ISPL(tf->tf_cs)) ? tf->tf_esp : (int)(tf + 1) - 8;
 pcb->pcb_gs = rgs();
}
