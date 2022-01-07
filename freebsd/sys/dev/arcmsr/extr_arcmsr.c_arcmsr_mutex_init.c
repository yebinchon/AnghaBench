
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int qbuffer_lock; int postDone_lock; int srb_lock; int isr_lock; } ;


 int ARCMSR_LOCK_INIT (int *,char*) ;

__attribute__((used)) static void arcmsr_mutex_init(struct AdapterControlBlock *acb)
{
 ARCMSR_LOCK_INIT(&acb->isr_lock, "arcmsr isr lock");
 ARCMSR_LOCK_INIT(&acb->srb_lock, "arcmsr srb lock");
 ARCMSR_LOCK_INIT(&acb->postDone_lock, "arcmsr postQ lock");
 ARCMSR_LOCK_INIT(&acb->qbuffer_lock, "arcmsr RW buffer lock");
}
