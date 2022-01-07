
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bktr_softc {int dummy; } ;
typedef int device_t ;


 int ALL_INTS_DISABLED ;
 int BKTR_GPIO_DMA_CTL ;
 int BKTR_INT_MASK ;
 int FIFO_RISC_DISABLED ;
 int OUTL (struct bktr_softc*,int ,int ) ;
 int OUTW (struct bktr_softc*,int ,int ) ;
 struct bktr_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bktr_shutdown( device_t dev )
{
 struct bktr_softc *bktr = device_get_softc(dev);


 OUTL(bktr, BKTR_INT_MASK, ALL_INTS_DISABLED);
 OUTW(bktr, BKTR_GPIO_DMA_CTL, FIFO_RISC_DISABLED);

 return 0;
}
