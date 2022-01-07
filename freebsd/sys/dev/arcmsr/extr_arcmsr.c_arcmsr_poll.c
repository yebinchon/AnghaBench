
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;
struct AdapterControlBlock {int isr_lock; } ;


 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 int arcmsr_interrupt (struct AdapterControlBlock*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int mtx_owned (int *) ;

__attribute__((used)) static void arcmsr_poll(struct cam_sim *psim)
{
 struct AdapterControlBlock *acb;
 int mutex;

 acb = (struct AdapterControlBlock *)cam_sim_softc(psim);
 mutex = mtx_owned(&acb->isr_lock);
 if( mutex == 0 )
  ARCMSR_LOCK_ACQUIRE(&acb->isr_lock);
 arcmsr_interrupt(acb);
 if( mutex == 0 )
  ARCMSR_LOCK_RELEASE(&acb->isr_lock);
}
