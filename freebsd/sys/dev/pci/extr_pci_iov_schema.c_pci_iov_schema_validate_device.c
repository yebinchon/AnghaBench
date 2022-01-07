
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 char const* DRIVER_CONFIG_NAME ;
 int EINVAL ;
 char const* IOV_CONFIG_NAME ;
 int * dnvlist_take_nvlist (int *,char const*,int *) ;
 int * nvlist_get_nvlist (int const*,char const*) ;
 int nvlist_move_nvlist (int *,char const*,int *) ;
 int pci_iov_schema_validate_required (int const*,int *) ;
 int pci_iov_schema_validate_types (int const*,int *) ;

__attribute__((used)) static int
pci_iov_schema_validate_device(const nvlist_t *schema, nvlist_t *config,
    const char *schema_device, const char *config_device)
{
 const nvlist_t *device_schema, *iov_schema, *driver_schema;
 nvlist_t *device_config, *iov_config, *driver_config;
 int error;

 device_config = ((void*)0);
 iov_config = ((void*)0);
 driver_config = ((void*)0);

 device_schema = nvlist_get_nvlist(schema, schema_device);
 iov_schema = nvlist_get_nvlist(device_schema, IOV_CONFIG_NAME);
 driver_schema = nvlist_get_nvlist(device_schema, DRIVER_CONFIG_NAME);

 device_config = dnvlist_take_nvlist(config, config_device, ((void*)0));
 if (device_config == ((void*)0)) {
  error = EINVAL;
  goto out;
 }

 iov_config = dnvlist_take_nvlist(device_config, IOV_CONFIG_NAME, ((void*)0));
 if (iov_config == ((void*)0)) {
  error = EINVAL;
  goto out;
 }

 driver_config = dnvlist_take_nvlist(device_config, DRIVER_CONFIG_NAME,
     ((void*)0));
 if (driver_config == ((void*)0)) {
  error = EINVAL;
  goto out;
 }

 error = pci_iov_schema_validate_required(iov_schema, iov_config);
 if (error != 0)
  goto out;

 error = pci_iov_schema_validate_required(driver_schema, driver_config);
 if (error != 0)
  goto out;

 error = pci_iov_schema_validate_types(iov_schema, iov_config);
 if (error != 0)
  goto out;

 error = pci_iov_schema_validate_types(driver_schema, driver_config);
 if (error != 0)
  goto out;

out:

 nvlist_move_nvlist(device_config, IOV_CONFIG_NAME, iov_config);
 nvlist_move_nvlist(device_config, DRIVER_CONFIG_NAME, driver_config);
 nvlist_move_nvlist(config, config_device, device_config);

 return (error);
}
