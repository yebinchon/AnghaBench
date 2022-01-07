
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int isr_lock; } ;


 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 int arcmsr_interrupt (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_intr_handler(void *arg)
{
 struct AdapterControlBlock *acb = (struct AdapterControlBlock *)arg;

 ARCMSR_LOCK_ACQUIRE(&acb->isr_lock);
 arcmsr_interrupt(acb);
 ARCMSR_LOCK_RELEASE(&acb->isr_lock);
}
