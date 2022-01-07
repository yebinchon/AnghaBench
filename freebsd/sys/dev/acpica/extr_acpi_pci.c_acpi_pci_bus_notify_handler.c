
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* device_t ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;



 int BUS_RESCAN (void*) ;
 int Giant ;
 int device_printf (void*,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
acpi_pci_bus_notify_handler(ACPI_HANDLE h, UINT32 notify, void *context)
{
 device_t dev;

 dev = context;

 switch (notify) {
 case 128:
  mtx_lock(&Giant);
  BUS_RESCAN(dev);
  mtx_unlock(&Giant);
  break;
 default:
  device_printf(dev, "unknown notify %#x\n", notify);
  break;
 }
}
