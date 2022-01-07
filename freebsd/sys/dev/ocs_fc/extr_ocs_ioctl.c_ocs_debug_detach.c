
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocs_softc {TYPE_1__* cdev; int dbg_lock; } ;
struct TYPE_2__ {int * si_drv1; } ;


 int destroy_dev (TYPE_1__*) ;
 int mtx_destroy (int *) ;

void
ocs_debug_detach(void *os)
{
 struct ocs_softc *ocs = os;

 mtx_destroy(&ocs->dbg_lock);

 if (ocs->cdev) {
  ocs->cdev->si_drv1 = ((void*)0);
  destroy_dev(ocs->cdev);
 }
}
