
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_sepc; int tf_tp; int tf_gp; int tf_sp; int tf_ra; int tf_a; int tf_s; int tf_t; } ;
struct pcb {int pcb_sepc; int pcb_tp; int pcb_gp; int pcb_sp; int pcb_ra; int pcb_a; int pcb_s; int pcb_t; } ;


 int memcpy (int ,int ,int) ;

void
makectx(struct trapframe *tf, struct pcb *pcb)
{

 memcpy(pcb->pcb_t, tf->tf_t, sizeof(tf->tf_t));
 memcpy(pcb->pcb_s, tf->tf_s, sizeof(tf->tf_s));
 memcpy(pcb->pcb_a, tf->tf_a, sizeof(tf->tf_a));

 pcb->pcb_ra = tf->tf_ra;
 pcb->pcb_sp = tf->tf_sp;
 pcb->pcb_gp = tf->tf_gp;
 pcb->pcb_tp = tf->tf_tp;
 pcb->pcb_sepc = tf->tf_sepc;
}
