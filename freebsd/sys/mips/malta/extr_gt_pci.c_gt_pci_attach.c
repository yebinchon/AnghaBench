
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct gt_pci_softc {int sc_mem; int sc_imask; int sc_elcr; unsigned int sc_reserved; int sc_ih; int * sc_irq; void* sc_ioh_elcr; int sc_st; void* sc_ioh_icu2; void* sc_ioh_icu1; scalar_t__ sc_io; TYPE_1__ sc_irq_rman; TYPE_1__ sc_mem_rman; TYPE_1__ sc_io_rman; scalar_t__ sc_busno; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int ICW1_IC4 ;
 int ICW1_RESET ;
 int ICW4_8086 ;
 int INTR_TYPE_MISC ;
 int IO_ICU1 ;
 int IO_ICU2 ;
 scalar_t__ MALTA_PCI0_IO_BASE ;
 int MALTA_PCIMEM1_BASE ;
 int MALTA_PCIMEM1_SIZE ;
 int MALTA_SOUTHBRIDGE_INTR ;
 void* MIPS_PHYS_TO_KSEG1 (scalar_t__) ;
 int OCW3_ESMM ;
 int OCW3_RR ;
 int OCW3_SEL ;
 int OCW3_SMM ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 void* RMAN_ARRAY ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource (int ,int ,int*,int ,int ,int,int) ;
 int bus_generic_attach (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct gt_pci_softc*,int *) ;
 scalar_t__ bus_space_map (int ,int,int,int ,void**) ;
 int bus_space_write_1 (int ,void*,int,int) ;
 int device_add_child (int ,char*,int) ;
 struct gt_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int gt_pci_intr ;
 int mips_bus_space_generic ;
 int panic (char*) ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,int,int) ;

__attribute__((used)) static int
gt_pci_attach(device_t dev)
{

 uint32_t busno;
 struct gt_pci_softc *sc = device_get_softc(dev);
 int rid;

 busno = 0;
 sc->sc_dev = dev;
 sc->sc_busno = busno;
 sc->sc_st = mips_bus_space_generic;


 sc->sc_io = MALTA_PCI0_IO_BASE;
 sc->sc_io_rman.rm_type = RMAN_ARRAY;
 sc->sc_io_rman.rm_descr = "GT64120 PCI I/O Ports";




 if (rman_init(&sc->sc_io_rman) != 0 ||
     rman_manage_region(&sc->sc_io_rman, 0x100, 0xffff) != 0) {
  panic("gt_pci_attach: failed to set up I/O rman");
 }


 sc->sc_mem = MALTA_PCIMEM1_BASE;
 sc->sc_mem_rman.rm_type = RMAN_ARRAY;
 sc->sc_mem_rman.rm_descr = "GT64120 PCI Memory";
 if (rman_init(&sc->sc_mem_rman) != 0 ||
     rman_manage_region(&sc->sc_mem_rman,
     sc->sc_mem, sc->sc_mem + MALTA_PCIMEM1_SIZE) != 0) {
  panic("gt_pci_attach: failed to set up memory rman");
 }
 sc->sc_irq_rman.rm_type = RMAN_ARRAY;
 sc->sc_irq_rman.rm_descr = "GT64120 PCI IRQs";
 if (rman_init(&sc->sc_irq_rman) != 0 ||
     rman_manage_region(&sc->sc_irq_rman, 1, 31) != 0)
  panic("gt_pci_attach: failed to set up IRQ rman");
 sc->sc_ioh_elcr = MIPS_PHYS_TO_KSEG1(sc->sc_io + 0x4d0);
 sc->sc_ioh_icu1 = MIPS_PHYS_TO_KSEG1(sc->sc_io + IO_ICU1);
 sc->sc_ioh_icu2 = MIPS_PHYS_TO_KSEG1(sc->sc_io + IO_ICU2);




 sc->sc_imask = 0xffff;


 sc->sc_elcr = 0;





 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, 0,
     ICW1_RESET | ICW1_IC4);



 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, 1,
     0 );
 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, 1,
     1 << 2);
 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, 1,
     ICW4_8086);


 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, 1,
     sc->sc_imask & 0xff);


 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, 0,
     OCW3_SEL | OCW3_ESMM | OCW3_SMM);


 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, 0,
     OCW3_SEL | OCW3_RR);


 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2, 0,
     ICW1_RESET | ICW1_IC4);
 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2, 1,
     0 );
 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2, 1,
     1 << 2);
 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2, 1,
     ICW4_8086);


 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2, 1,
     sc->sc_imask & 0xff);


 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2, 0,
     OCW3_SEL | OCW3_ESMM | OCW3_SMM);


 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2, 0,
     OCW3_SEL | OCW3_RR);




 bus_space_write_1(sc->sc_st, sc->sc_ioh_elcr, 0,
     sc->sc_elcr & 0xff);
 bus_space_write_1(sc->sc_st, sc->sc_ioh_elcr, 1,
     (sc->sc_elcr >> 8) & 0xff);





 sc->sc_reserved =
  (1U << 0) |
  (1U << 1) |
  (1U << 2) |
  (1U << 3) |
  (1U << 4) |
  (1U << 6) |
  (1U << 7) |
  (1U << 8) |
  (1U << 9) |
  (1U << 12) |
  (1U << 14) |
  (1U << 15);


 if ((sc->sc_irq = bus_alloc_resource(dev, SYS_RES_IRQ, &rid,
     MALTA_SOUTHBRIDGE_INTR, MALTA_SOUTHBRIDGE_INTR, 1,
     RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "unable to allocate IRQ resource\n");
  return ENXIO;
 }

 if ((bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_MISC,
       gt_pci_intr, ((void*)0), sc, &sc->sc_ih))) {
  device_printf(dev,
      "WARNING: unable to register interrupt handler\n");
  return ENXIO;
 }


 device_add_child(dev, "pci", -1);
 return (bus_generic_attach(dev));
}
