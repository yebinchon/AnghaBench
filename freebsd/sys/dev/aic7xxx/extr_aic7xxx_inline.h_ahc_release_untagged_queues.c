
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int flags; scalar_t__ untagged_queue_lock; } ;


 int AHC_SCB_BTT ;
 int ahc_run_untagged_queues (struct ahc_softc*) ;

__attribute__((used)) static __inline void
ahc_release_untagged_queues(struct ahc_softc *ahc)
{
 if ((ahc->flags & AHC_SCB_BTT) == 0) {
  ahc->untagged_queue_lock--;
  if (ahc->untagged_queue_lock == 0)
   ahc_run_untagged_queues(ahc);
 }
}
