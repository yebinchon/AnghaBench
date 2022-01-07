
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct unin_chip_devinfo {int udi_ninterrupts; int * udi_interrupts; int udi_resources; } ;
typedef int phandle_t ;
typedef int iparent ;
typedef int icells ;


 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;
 int MAP_IRQ (int ,int) ;
 scalar_t__ OF_getprop (int ,char*,int *,int) ;
 int OF_getprop_alloc_multi (int ,char*,int,void**) ;
 scalar_t__ OF_searchprop (int ,char*,int*,int) ;
 int SYS_RES_IRQ ;
 int panic (char*) ;
 int powerpc_config_intr (int ,int ,int ) ;
 int printf (char*) ;
 int resource_list_add (int *,int ,int,int ,int ,int) ;

__attribute__((used)) static void
unin_chip_add_intr(phandle_t devnode, struct unin_chip_devinfo *dinfo)
{
 phandle_t iparent;
 int *intr;
 int i, nintr;
 int icells;

 if (dinfo->udi_ninterrupts >= 6) {
  printf("unin: device has more than 6 interrupts\n");
  return;
 }

 nintr = OF_getprop_alloc_multi(devnode, "interrupts", sizeof(*intr),
  (void **)&intr);
 if (nintr == -1) {
  nintr = OF_getprop_alloc_multi(devnode, "AAPL,interrupts",
   sizeof(*intr), (void **)&intr);
  if (nintr == -1)
   return;
 }

 if (intr[0] == -1)
  return;

 if (OF_getprop(devnode, "interrupt-parent", &iparent, sizeof(iparent))
     <= 0)
  panic("Interrupt but no interrupt parent!\n");

 if (OF_searchprop(iparent, "#interrupt-cells", &icells, sizeof(icells))
     <= 0)
  icells = 1;

 for (i = 0; i < nintr; i+=icells) {
  u_int irq = MAP_IRQ(iparent, intr[i]);

  resource_list_add(&dinfo->udi_resources, SYS_RES_IRQ,
      dinfo->udi_ninterrupts, irq, irq, 1);

  if (icells > 1) {
   powerpc_config_intr(irq,
       (intr[i+1] & 1) ? INTR_TRIGGER_LEVEL :
       INTR_TRIGGER_EDGE, INTR_POLARITY_LOW);
  }

  dinfo->udi_interrupts[dinfo->udi_ninterrupts] = irq;
  dinfo->udi_ninterrupts++;
 }
}
