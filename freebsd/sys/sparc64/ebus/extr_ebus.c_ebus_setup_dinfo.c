
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct isa_regs {scalar_t__ size; } ;
struct ebus_softc {int sc_flags; int sc_ign; int sc_iinfo; } ;
struct TYPE_2__ {int obd_name; } ;
struct ebus_devinfo {int edi_rl; TYPE_1__ edi_obdinfo; } ;
typedef int rintr ;
typedef int reg ;
typedef int phandle_t ;
typedef struct isa_regs ofw_isa_intr_t ;
typedef int intr ;
typedef int device_t ;


 int EBUS_PCI ;
 scalar_t__ INTMAP_VEC (int ,scalar_t__) ;
 scalar_t__ ISA_REG_PHYS (struct isa_regs*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_getprop_alloc_multi (int ,char*,int,void**) ;
 int OF_prop_free (struct isa_regs*) ;
 scalar_t__ PCI_INVALID_IRQ ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int device_printf (int ,char*,int ,...) ;
 int ebus_destroy_dinfo (struct ebus_devinfo*) ;
 int free (struct ebus_devinfo*,int ) ;
 struct ebus_devinfo* malloc (int,int ,int) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (TYPE_1__*,int ) ;
 int ofw_bus_lookup_imap (int ,int *,struct isa_regs*,int,struct isa_regs*,int,scalar_t__*,int,int *) ;
 scalar_t__ ofw_isa_route_intr (int ,int ,int *,struct isa_regs) ;
 int resource_list_add (int *,int ,int,scalar_t__,scalar_t__,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static struct ebus_devinfo *
ebus_setup_dinfo(device_t dev, struct ebus_softc *sc, phandle_t node)
{
 struct isa_regs reg, *regs;
 ofw_isa_intr_t intr, *intrs;
 struct ebus_devinfo *edi;
 uint64_t start;
 uint32_t rintr;
 int i, nintr, nreg, rv;

 edi = malloc(sizeof(*edi), M_DEVBUF, M_ZERO | M_WAITOK);
 if (ofw_bus_gen_setup_devinfo(&edi->edi_obdinfo, node) != 0) {
  free(edi, M_DEVBUF);
  return (((void*)0));
 }
 resource_list_init(&edi->edi_rl);
 nreg = OF_getprop_alloc_multi(node, "reg", sizeof(*regs), (void **)&regs);
 if (nreg == -1) {
  device_printf(dev, "<%s>: incomplete\n",
      edi->edi_obdinfo.obd_name);
  ebus_destroy_dinfo(edi);
  return (((void*)0));
 }
 for (i = 0; i < nreg; i++) {
  start = ISA_REG_PHYS(regs + i);
  (void)resource_list_add(&edi->edi_rl, SYS_RES_MEMORY, i,
      start, start + regs[i].size - 1, regs[i].size);
 }
 OF_prop_free(regs);

 nintr = OF_getprop_alloc_multi(node, "interrupts", sizeof(*intrs),
     (void **)&intrs);
 if (nintr == -1)
  return (edi);
 for (i = 0; i < nintr; i++) {
  rv = 0;
  if ((sc->sc_flags & EBUS_PCI) != 0) {
   rintr = ofw_isa_route_intr(dev, node, &sc->sc_iinfo,
       intrs[i]);
  } else {
   intr = intrs[i];
   rv = ofw_bus_lookup_imap(node, &sc->sc_iinfo, &reg,
       sizeof(reg), &intr, sizeof(intr), &rintr,
       sizeof(rintr), ((void*)0));

   if (rv != 0)
    rintr = INTMAP_VEC(sc->sc_ign, rintr);

  }
  if ((sc->sc_flags & EBUS_PCI) == 0 ? rv == 0 :
      rintr == PCI_INVALID_IRQ) {
   device_printf(dev,
       "<%s>: could not map EBus interrupt %d\n",
       edi->edi_obdinfo.obd_name, intrs[i]);
   continue;
  }
  (void)resource_list_add(&edi->edi_rl, SYS_RES_IRQ, i, rintr,
      rintr, 1);
 }
 OF_prop_free(intrs);
 return (edi);
}
