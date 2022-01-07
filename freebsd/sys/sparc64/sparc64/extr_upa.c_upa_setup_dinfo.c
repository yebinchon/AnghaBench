
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct upa_softc {int sc_ign; } ;
struct upa_regs {int phys; int size; } ;
struct TYPE_2__ {int obd_name; } ;
struct upa_devinfo {int udi_rl; TYPE_1__ udi_obdinfo; } ;
typedef int phandle_t ;
typedef int device_t ;


 int INTMAP_VEC (int ,int) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_getprop_alloc_multi (int ,char*,int,void**) ;
 int OF_prop_free (struct upa_regs*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int UPA_INO_BASE ;
 int device_printf (int ,char*,int ) ;
 int free (struct upa_devinfo*,int ) ;
 struct upa_devinfo* malloc (int,int ,int) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (TYPE_1__*,int ) ;
 int resource_list_add (int *,int ,int,int,int,int) ;
 int resource_list_init (int *) ;
 int upa_destroy_dinfo (struct upa_devinfo*) ;

__attribute__((used)) static struct upa_devinfo *
upa_setup_dinfo(device_t dev, struct upa_softc *sc, phandle_t node,
    uint32_t portid)
{
 struct upa_devinfo *udi;
 struct upa_regs *reg;
 uint32_t intr;
 int i, nreg;

 udi = malloc(sizeof(*udi), M_DEVBUF, M_WAITOK | M_ZERO);
 if (ofw_bus_gen_setup_devinfo(&udi->udi_obdinfo, node) != 0) {
  free(udi, M_DEVBUF);
  return (((void*)0));
 }
 resource_list_init(&udi->udi_rl);

 nreg = OF_getprop_alloc_multi(node, "reg", sizeof(*reg), (void **)&reg);
 if (nreg == -1) {
  device_printf(dev, "<%s>: incomplete\n",
      udi->udi_obdinfo.obd_name);
  goto fail;
 }
 for (i = 0; i < nreg; i++)
  resource_list_add(&udi->udi_rl, SYS_RES_MEMORY, i, reg[i].phys,
      reg[i].phys + reg[i].size - 1, reg[i].size);
 OF_prop_free(reg);

 intr = INTMAP_VEC(sc->sc_ign, (UPA_INO_BASE + portid));
 resource_list_add(&udi->udi_rl, SYS_RES_IRQ, 0, intr, intr, 1);

 return (udi);

 fail:
 upa_destroy_dinfo(udi);
 return (((void*)0));
}
