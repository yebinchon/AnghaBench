
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_mmio_platform_softc {int ih_user; int (* intr_handler ) (int ) ;int pio_recv; scalar_t__ use_pio; } ;


 int PIO_READ (int ) ;
 int PIO_SET (int ,int,int ) ;
 int mips_dcache_wbinv_all () ;
 int stub1 (int ) ;

__attribute__((used)) static void
platform_intr(void *arg)
{
 struct virtio_mmio_platform_softc *sc;
 int reg;

 sc = arg;

 if (sc->use_pio) {

  reg = PIO_READ(sc->pio_recv);


  PIO_SET(sc->pio_recv, reg, 0);
 }


 mips_dcache_wbinv_all();

 if (sc->intr_handler != ((void*)0))
  sc->intr_handler(sc->ih_user);
}
