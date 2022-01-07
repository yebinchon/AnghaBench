
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct agp_nvidia_softc {int wbc_mask; TYPE_1__* gatt; int mc1_dev; } ;
typedef int device_t ;
struct TYPE_2__ {int ag_entries; scalar_t__ ag_virtual; } ;


 int AGP_NVIDIA_1_WBC ;
 int DELAY (int) ;
 int PAGE_SIZE ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
agp_nvidia_flush_tlb (device_t dev)
{
 struct agp_nvidia_softc *sc;
 u_int32_t wbc_reg, temp;
 volatile u_int32_t *ag_virtual;
 int i, pages;

 sc = (struct agp_nvidia_softc *)device_get_softc(dev);

 if (sc->wbc_mask) {
  wbc_reg = pci_read_config(sc->mc1_dev, AGP_NVIDIA_1_WBC, 4);
  wbc_reg |= sc->wbc_mask;
  pci_write_config(sc->mc1_dev, AGP_NVIDIA_1_WBC, wbc_reg, 4);


  for (i = 0; i < 3000; i++) {
   wbc_reg = pci_read_config(sc->mc1_dev,
        AGP_NVIDIA_1_WBC, 4);
   if ((sc->wbc_mask & wbc_reg) == 0)
    break;
   else
    DELAY(1000);
  }
  if (i == 3000)
   device_printf(dev,
    "TLB flush took more than 3 seconds.\n");
 }

 ag_virtual = (volatile u_int32_t *)sc->gatt->ag_virtual;


 pages = sc->gatt->ag_entries * sizeof(u_int32_t) / PAGE_SIZE;
 for(i = 0; i < pages; i++)
  temp = ag_virtual[i * PAGE_SIZE / sizeof(u_int32_t)];
 for(i = 0; i < pages; i++)
  temp = ag_virtual[i * PAGE_SIZE / sizeof(u_int32_t)];
}
