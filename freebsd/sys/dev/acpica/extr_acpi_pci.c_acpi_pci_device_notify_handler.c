
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 int ACPI_FAILURE (int ) ;


 int AcpiFormatException (int ) ;
 int BUS_RESCAN (int *) ;
 int Giant ;
 int acpi_SetInteger (int ,char*,int) ;
 int * acpi_get_device (int ) ;
 int acpi_name (int ) ;
 int device_detach (int *) ;
 int device_get_nameunit (int *) ;
 int device_printf (int *,char*,int,...) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
acpi_pci_device_notify_handler(ACPI_HANDLE h, UINT32 notify, void *context)
{
 device_t child, dev;
 ACPI_STATUS status;
 int error;

 dev = context;

 switch (notify) {
 case 129:
  mtx_lock(&Giant);
  BUS_RESCAN(dev);
  mtx_unlock(&Giant);
  break;
 case 128:
  child = acpi_get_device(h);
  if (child == ((void*)0)) {
   device_printf(dev, "no device to eject for %s\n",
       acpi_name(h));
   return;
  }
  mtx_lock(&Giant);
  error = device_detach(child);
  if (error) {
   mtx_unlock(&Giant);
   device_printf(dev, "failed to detach %s: %d\n",
       device_get_nameunit(child), error);
   return;
  }
  status = acpi_SetInteger(h, "_EJ0", 1);
  if (ACPI_FAILURE(status)) {
   mtx_unlock(&Giant);
   device_printf(dev, "failed to eject %s: %s\n",
       acpi_name(h), AcpiFormatException(status));
   return;
  }
  BUS_RESCAN(dev);
  mtx_unlock(&Giant);
  break;
 default:
  device_printf(dev, "unknown notify %#x for %s\n", notify,
      acpi_name(h));
  break;
 }
}
