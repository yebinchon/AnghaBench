
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int dummy; } ;


 int VMXNET3_BAR0_IMASK (int) ;
 int vmxnet3_write_bar0 (struct vmxnet3_softc*,int ,int) ;

__attribute__((used)) static void
vmxnet3_disable_intr(struct vmxnet3_softc *sc, int irq)
{

 vmxnet3_write_bar0(sc, VMXNET3_BAR0_IMASK(irq), 1);
}
