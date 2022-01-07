
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_acpi_device {int uid; int * hid; } ;
typedef int device_t ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ID_PROBE (int ,int ,int ,char**) ;
 int acpi_GetInteger (int ,char*,int*) ;
 int acpi_get_handle (int ) ;
 int device_get_parent (int ) ;
 struct sdhci_acpi_device const* sdhci_acpi_devices ;
 int sdhci_ids ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static const struct sdhci_acpi_device *
sdhci_acpi_find_device(device_t dev)
{
 char *hid;
 int i, uid;
 ACPI_HANDLE handle;
 ACPI_STATUS status;
 int rv;

 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, sdhci_ids, &hid);
 if (rv > 0)
  return (((void*)0));

 handle = acpi_get_handle(dev);
 status = acpi_GetInteger(handle, "_UID", &uid);
 if (ACPI_FAILURE(status))
  uid = 0;

 for (i = 0; sdhci_acpi_devices[i].hid != ((void*)0); i++) {
  if (strcmp(sdhci_acpi_devices[i].hid, hid) != 0)
   continue;
  if ((sdhci_acpi_devices[i].uid != 0) &&
      (sdhci_acpi_devices[i].uid != uid))
   continue;
  return (&sdhci_acpi_devices[i]);
 }

 return (((void*)0));
}
