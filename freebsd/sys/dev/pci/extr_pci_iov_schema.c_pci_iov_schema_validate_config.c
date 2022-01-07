
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int nvlist_t ;


 int PF_CONFIG_NAME ;
 int pci_iov_config_get_num_vfs (int *) ;
 int pci_iov_schema_validate_device (int const*,int *,int ,int ) ;
 int pci_iov_schema_validate_device_names (int *,int ) ;
 int pci_iov_schema_validate_vfs (int const*,int *,int ) ;

int
pci_iov_schema_validate_config(const nvlist_t *schema, nvlist_t *config)
{
 int error;
 uint16_t num_vfs;

 error = pci_iov_schema_validate_device(schema, config, PF_CONFIG_NAME,
     PF_CONFIG_NAME);
 if (error != 0)
  return (error);

 num_vfs = pci_iov_config_get_num_vfs(config);

 error = pci_iov_schema_validate_vfs(schema, config, num_vfs);
 if (error != 0)
  return (error);

 return (pci_iov_schema_validate_device_names(config, num_vfs));
}
