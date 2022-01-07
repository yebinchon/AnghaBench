
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int DELAY (int) ;
 int OHCI_ALL_INTRS ;
 int OHCI_COMMAND_STATUS ;
 int OHCI_CONTROL ;
 int OHCI_HCFS_RESET ;
 int OHCI_INTERRUPT_DISABLE ;
 int OHCI_IR ;
 int OHCI_OCR ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_read_4 (struct resource*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_write_4 (struct resource*,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static void
ohci_early_takeover(device_t self)
{
 struct resource *res;
 uint32_t ctl;
 int rid;
 int i;

 rid = PCIR_BAR(0);
 res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (res == ((void*)0))
  return;

 ctl = bus_read_4(res, OHCI_CONTROL);
 if (ctl & OHCI_IR) {
  if (bootverbose)
   printf("ohci early: "
       "SMM active, request owner change\n");
  bus_write_4(res, OHCI_COMMAND_STATUS, OHCI_OCR);
  for (i = 0; (i < 100) && (ctl & OHCI_IR); i++) {
   DELAY(1000);
   ctl = bus_read_4(res, OHCI_CONTROL);
  }
  if (ctl & OHCI_IR) {
   if (bootverbose)
    printf("ohci early: "
        "SMM does not respond, resetting\n");
   bus_write_4(res, OHCI_CONTROL, OHCI_HCFS_RESET);
  }

  bus_write_4(res, OHCI_INTERRUPT_DISABLE, OHCI_ALL_INTRS);
 }

 bus_release_resource(self, SYS_RES_MEMORY, rid, res);
}
