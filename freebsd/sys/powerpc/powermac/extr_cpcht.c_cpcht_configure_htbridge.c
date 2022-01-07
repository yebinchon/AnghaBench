
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct ofw_pci_register {int phys_hi; } ;
struct cpcht_softc {int sc_populated_slots; int sc_data; TYPE_1__* htirq_map; } ;
typedef int phandle_t ;
typedef int pcir ;
typedef int pcell_t ;
typedef int device_t ;
struct TYPE_2__ {int ht_source; int ht_base; int eoi_data; int apple_eoi; int irq_type; } ;


 int HTAPIC_MASK ;
 int IRQ_HT ;
 int OFW_PCI_PHYS_HI_BUS (int ) ;
 int OFW_PCI_PHYS_HI_DEVICE (int ) ;
 int OFW_PCI_PHYS_HI_FUNCTION (int ) ;
 int OF_getencprop (int ,char*,int *,int) ;
 int PCIB_READ_CONFIG (int ,int,int,int,int,int) ;
 int PCIB_WRITE_CONFIG (int ,int,int,int,int,int,int) ;
 int PCICAP_ID ;
 int PCICAP_NEXTPTR ;
 int PCIM_HTCAP_INTERRUPT ;
 int PCIM_HTCMD_CAP_MASK ;
 int PCIM_STATUS_CAPPRESENT ;
 int PCIR_CAP_PTR ;
 int PCIR_DEVVENDOR ;
 int PCIR_HT_COMMAND ;
 int PCIR_STATUS ;
 int PCIY_HT ;
 struct cpcht_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int) ;

__attribute__((used)) static void
cpcht_configure_htbridge(device_t dev, phandle_t child)
{
 struct cpcht_softc *sc;
 struct ofw_pci_register pcir;
 int ptr, nextptr;
 uint32_t vend, val;
 int i, nirq, irq;
 u_int b, f, s;

 sc = device_get_softc(dev);
 if (OF_getencprop(child, "reg", (pcell_t *)&pcir, sizeof(pcir)) == -1)
  return;

 b = OFW_PCI_PHYS_HI_BUS(pcir.phys_hi);
 s = OFW_PCI_PHYS_HI_DEVICE(pcir.phys_hi);
 f = OFW_PCI_PHYS_HI_FUNCTION(pcir.phys_hi);





 sc->sc_populated_slots |= (1 << s);
 if (!(PCIB_READ_CONFIG(dev, b, s, f, PCIR_STATUS, 2)
     & PCIM_STATUS_CAPPRESENT))
  return;

 nextptr = PCIB_READ_CONFIG(dev, b, s, f, PCIR_CAP_PTR, 1);
 while (nextptr != 0) {
  ptr = nextptr;
  nextptr = PCIB_READ_CONFIG(dev, b, s, f,
      ptr + PCICAP_NEXTPTR, 1);


  if (PCIB_READ_CONFIG(dev, b, s, f,
      ptr + PCICAP_ID, 1) != PCIY_HT)
   continue;

  val = PCIB_READ_CONFIG(dev, b, s, f, ptr + PCIR_HT_COMMAND, 2);
  if ((val & PCIM_HTCMD_CAP_MASK) != PCIM_HTCAP_INTERRUPT)
   continue;


  PCIB_WRITE_CONFIG(dev, b, s, f, ptr + PCIR_HT_COMMAND, 0x1, 1);
  nirq = PCIB_READ_CONFIG(dev, b, s, f, ptr + 4, 4);
  nirq = ((nirq >> 16) & 0xff) + 1;

  device_printf(dev, "%d HT IRQs on device %d.%d\n", nirq, s, f);

  for (i = 0; i < nirq; i++) {
   PCIB_WRITE_CONFIG(dev, b, s, f,
        ptr + PCIR_HT_COMMAND, 0x10 + (i << 1), 1);
   irq = PCIB_READ_CONFIG(dev, b, s, f, ptr + 4, 4);




   PCIB_WRITE_CONFIG(dev, b, s, f, ptr + 4,
       irq | HTAPIC_MASK, 4);
   irq = (irq >> 16) & 0xff;

   sc->htirq_map[irq].irq_type = IRQ_HT;
   sc->htirq_map[irq].ht_source = i;
   sc->htirq_map[irq].ht_base = sc->sc_data +
       (((((s & 0x1f) << 3) | (f & 0x07)) << 8) | (ptr));

   PCIB_WRITE_CONFIG(dev, b, s, f,
        ptr + PCIR_HT_COMMAND, 0x11 + (i << 1), 1);
   sc->htirq_map[irq].eoi_data =
       PCIB_READ_CONFIG(dev, b, s, f, ptr + 4, 4) |
       0x80000000;






   vend = PCIB_READ_CONFIG(dev, b, s, f,
       PCIR_DEVVENDOR, 4);
   if ((vend & 0xffff) == 0x106b)
    sc->htirq_map[irq].apple_eoi =
     (sc->htirq_map[irq].ht_base - ptr) + 0x60;
  }
 }
}
