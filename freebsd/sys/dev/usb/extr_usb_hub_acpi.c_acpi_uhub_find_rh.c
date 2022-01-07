
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 int ACPI_TYPE_DEVICE ;
 int AE_ERROR ;
 int AcpiWalkNamespace (int ,int *,int,int ,int *,int ,int **) ;
 int * acpi_get_handle (int ) ;
 int acpi_uhub_find_rh_cb ;
 int device_get_parent (int ) ;

__attribute__((used)) static ACPI_STATUS
acpi_uhub_find_rh(device_t dev, ACPI_HANDLE *ah)
{
 device_t grand;
 ACPI_HANDLE gah;

 *ah = ((void*)0);
 grand = device_get_parent(device_get_parent(dev));

 if ((gah = acpi_get_handle(grand)) == ((void*)0))
  return (AE_ERROR);

 return (AcpiWalkNamespace(ACPI_TYPE_DEVICE, gah, 1,
     acpi_uhub_find_rh_cb, ((void*)0), dev, ah));
}
