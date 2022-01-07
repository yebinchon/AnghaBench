
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int nvlist_t ;


 int * nvlist_get_nvlist (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 int pci_iov_schema_validate_dev_name (char const*,int ) ;
 int pci_iov_schema_validate_device_subsystems (int const*) ;

__attribute__((used)) static int
pci_iov_schema_validate_device_names(const nvlist_t *config, uint16_t num_vfs)
{
 const nvlist_t *device;
 void *cookie;
 const char *name;
 int type, error;

 cookie = ((void*)0);
 while ((name = nvlist_next(config, &type, &cookie)) != ((void*)0)) {
  error = pci_iov_schema_validate_dev_name(name, num_vfs);
  if (error != 0)
   return (error);






  device = nvlist_get_nvlist(config, name);
  error = pci_iov_schema_validate_device_subsystems(device);
  if (error != 0)
   return (error);
 }

 return (0);
}
