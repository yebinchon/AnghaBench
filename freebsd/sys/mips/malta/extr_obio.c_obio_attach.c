
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct obio_softc {int oba_addr; int oba_size; TYPE_1__ oba_irq_rman; TYPE_1__ oba_rman; int oba_st; } ;
typedef int device_t ;


 int MALTA_PCIMEM3_SIZE ;
 int MALTA_UART0ADR ;
 int MIPS_PHYS_TO_KSEG1 (int ) ;
 void* RMAN_ARRAY ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_add_child (int ,char*,int ) ;
 struct obio_softc* device_get_softc (int ) ;
 int mips_bus_space_generic ;
 int panic (char*) ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,int,int) ;

int
obio_attach(device_t dev)
{
 struct obio_softc *sc = device_get_softc(dev);

 sc->oba_st = mips_bus_space_generic;
 sc->oba_addr = MIPS_PHYS_TO_KSEG1(MALTA_UART0ADR);
 sc->oba_size = MALTA_PCIMEM3_SIZE;
 sc->oba_rman.rm_type = RMAN_ARRAY;
 sc->oba_rman.rm_descr = "OBIO I/O";
 if (rman_init(&sc->oba_rman) != 0 ||
     rman_manage_region(&sc->oba_rman,
     sc->oba_addr, sc->oba_addr + sc->oba_size) != 0)
  panic("obio_attach: failed to set up I/O rman");
 sc->oba_irq_rman.rm_type = RMAN_ARRAY;
 sc->oba_irq_rman.rm_descr = "OBIO IRQ";





 if (rman_init(&sc->oba_irq_rman) != 0 ||
     rman_manage_region(&sc->oba_irq_rman, 4, 4) != 0)
  panic("obio_attach: failed to set up IRQ rman");

 device_add_child(dev, "uart", 0);
 bus_generic_probe(dev);
 bus_generic_attach(dev);

 return (0);
}
