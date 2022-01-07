
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DRIVER_CONFIG_NAME ;
 int EINVAL ;
 int IOV_CONFIG_NAME ;
 int nvlist_exists_nvlist (int const*,char const*) ;
 int * nvlist_get_nvlist (int const*,char const*) ;
 int pci_iov_validate_param_collisions (int const*) ;
 int pci_iov_validate_schema_subsystems (int const*) ;
 int pci_iov_validate_subsystem_schema (int const*,int ) ;

__attribute__((used)) static int
pci_iov_validate_device_schema(const nvlist_t *schema, const char *name)
{
 const nvlist_t *dev_schema;
 int error;

 if (!nvlist_exists_nvlist(schema, name))
  return (EINVAL);
 dev_schema = nvlist_get_nvlist(schema, name);

 error = pci_iov_validate_subsystem_schema(dev_schema, IOV_CONFIG_NAME);
 if (error != 0)
  return (error);

 error = pci_iov_validate_subsystem_schema(dev_schema,
     DRIVER_CONFIG_NAME);
 if (error != 0)
  return (error);

 error = pci_iov_validate_param_collisions(dev_schema);
 if (error != 0)
  return (error);

 return (pci_iov_validate_schema_subsystems(dev_schema));
}
