
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef scalar_t__ ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3 ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 int AcpiFormatException (scalar_t__) ;
 int EINVAL ;
 int acpi_get_handle (int ) ;
 int acpi_name (int ) ;
 scalar_t__ acpi_pwr_switch_consumer (int ,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,int ,...) ;
 scalar_t__ pci_do_power_resume ;
 scalar_t__ pci_do_power_suspend ;
 int pci_get_powerstate (int ) ;
 int pci_powerstate ;
 int pci_set_powerstate_method (int ,int ,int) ;

__attribute__((used)) static int
acpi_pci_set_powerstate_method(device_t dev, device_t child, int state)
{
 ACPI_HANDLE h;
 ACPI_STATUS status;
 int old_state, error;

 error = 0;
 if (state < ACPI_STATE_D0 || state > ACPI_STATE_D3)
  return (EINVAL);
 ACPI_SERIAL_BEGIN(pci_powerstate);
 old_state = pci_get_powerstate(child);
 if (old_state < state && pci_do_power_suspend) {
  error = pci_set_powerstate_method(dev, child, state);
  if (error)
   goto out;
 }
 h = acpi_get_handle(child);
 status = acpi_pwr_switch_consumer(h, state);
 if (ACPI_SUCCESS(status)) {
  if (bootverbose)
   device_printf(dev, "set ACPI power state D%d on %s\n",
       state, acpi_name(h));
 } else if (status != AE_NOT_FOUND)
  device_printf(dev,
      "failed to set ACPI power state D%d on %s: %s\n",
      state, acpi_name(h), AcpiFormatException(status));
 if (old_state > state && pci_do_power_resume)
  error = pci_set_powerstate_method(dev, child, state);

out:
 ACPI_SERIAL_END(pci_powerstate);
 return (error);
}
