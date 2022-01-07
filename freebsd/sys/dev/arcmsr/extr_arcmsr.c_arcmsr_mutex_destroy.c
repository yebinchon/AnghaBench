
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int isr_lock; int srb_lock; int postDone_lock; int qbuffer_lock; } ;


 int ARCMSR_LOCK_DESTROY (int *) ;

__attribute__((used)) static void arcmsr_mutex_destroy(struct AdapterControlBlock *acb)
{
 ARCMSR_LOCK_DESTROY(&acb->qbuffer_lock);
 ARCMSR_LOCK_DESTROY(&acb->postDone_lock);
 ARCMSR_LOCK_DESTROY(&acb->srb_lock);
 ARCMSR_LOCK_DESTROY(&acb->isr_lock);
}
