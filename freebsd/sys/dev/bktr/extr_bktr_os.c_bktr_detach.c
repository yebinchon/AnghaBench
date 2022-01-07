
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bktr_softc {int res_mem; int mem_rid; int res_irq; int irq_rid; int res_ih; int bktrdev; int tunerdev; int vbidev; int vbimutex; int * msp3400c_info; } ;
typedef int device_t ;


 int ALL_INTS_DISABLED ;
 int BKTR_GPIO_DMA_CTL ;
 int BKTR_INT_MASK ;
 int FIFO_RISC_DISABLED ;
 int OUTL (struct bktr_softc*,int ,int ) ;
 int OUTW (struct bktr_softc*,int ,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bt848_i2c_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int destroy_dev (int ) ;
 struct bktr_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int msp_detach (struct bktr_softc*) ;
 int mtx_destroy (int *) ;
 int printf (char*,int) ;

__attribute__((used)) static int
bktr_detach( device_t dev )
{
 struct bktr_softc *bktr = device_get_softc(dev);
 OUTL(bktr, BKTR_INT_MASK, ALL_INTS_DISABLED);
 OUTW(bktr, BKTR_GPIO_DMA_CTL, FIFO_RISC_DISABLED);
 destroy_dev(bktr->vbidev);
 destroy_dev(bktr->tunerdev);
 destroy_dev(bktr->bktrdev);




 bus_teardown_intr(dev, bktr->res_irq, bktr->res_ih);
 bus_release_resource(dev, SYS_RES_IRQ, bktr->irq_rid, bktr->res_irq);
 bus_release_resource(dev, SYS_RES_MEMORY, bktr->mem_rid, bktr->res_mem);

 return 0;
}
