
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {struct intr_request* pc_irfree; struct intr_request* pc_irpool; int pc_irhead; int * pc_irtail; } ;
struct intr_request {struct intr_request* ir_next; } ;


 int IR_FREE ;

void
cpu_pcpu_init(struct pcpu *pcpu, int cpuid, size_t size)
{
 struct intr_request *ir;
 int i;

 pcpu->pc_irtail = &pcpu->pc_irhead;
 for (i = 0; i < IR_FREE; i++) {
  ir = &pcpu->pc_irpool[i];
  ir->ir_next = pcpu->pc_irfree;
  pcpu->pc_irfree = ir;
 }
}
