
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_throttle_softc {int dummy; } ;
typedef scalar_t__ device_t ;


 int CPU_QUIRK_NO_THROTTLE ;
 int PCI_DEVICE_82371AB_3 ;


 int PCI_VENDOR_INTEL ;
 scalar_t__ pci_find_device (int ,int ) ;
 int pci_get_revid (scalar_t__) ;
 int thr_quirks ;

__attribute__((used)) static void
acpi_throttle_quirks(struct acpi_throttle_softc *sc)
{
}
