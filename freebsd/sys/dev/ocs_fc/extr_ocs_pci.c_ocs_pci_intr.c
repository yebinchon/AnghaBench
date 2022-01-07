
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocs_softc {int sim_lock; int hw; } ;
struct TYPE_2__ {int vec; struct ocs_softc* softc; } ;
typedef TYPE_1__ ocs_intr_ctx_t ;


 int OCS_OS_MAX_ISR_TIME_MSEC ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ocs_hw_process (int *,int ,int ) ;

__attribute__((used)) static void
ocs_pci_intr(void *context)
{
 ocs_intr_ctx_t *intr = context;
 struct ocs_softc *ocs = intr->softc;

 mtx_lock(&ocs->sim_lock);
  ocs_hw_process(&ocs->hw, intr->vec, OCS_OS_MAX_ISR_TIME_MSEC);
 mtx_unlock(&ocs->sim_lock);
}
