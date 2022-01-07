
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int PF_CONFIG_NAME ;
 int VF_SCHEMA_NAME ;
 int pci_iov_validate_device_schema (int const*,int ) ;
 int pci_iov_validate_schema_devices (int const*) ;

int
pci_iov_validate_schema(const nvlist_t *schema)
{
 int error;

 error = pci_iov_validate_device_schema(schema, PF_CONFIG_NAME);
 if (error != 0)
  return (error);

 error = pci_iov_validate_device_schema(schema, VF_SCHEMA_NAME);
 if (error != 0)
  return (error);

 return (pci_iov_validate_schema_devices(schema));
}
