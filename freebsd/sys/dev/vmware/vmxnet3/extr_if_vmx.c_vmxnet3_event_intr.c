
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {scalar_t__ vmx_intr_mask_mode; int vmx_event_intr_idx; } ;


 int FILTER_SCHEDULE_THREAD ;
 scalar_t__ VMXNET3_IMM_ACTIVE ;
 int vmxnet3_disable_intr (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static int
vmxnet3_event_intr(void *vsc)
{
 struct vmxnet3_softc *sc;

 sc = vsc;

 if (sc->vmx_intr_mask_mode == VMXNET3_IMM_ACTIVE)
  vmxnet3_disable_intr(sc, sc->vmx_event_intr_idx);







 return (FILTER_SCHEDULE_THREAD);
}
