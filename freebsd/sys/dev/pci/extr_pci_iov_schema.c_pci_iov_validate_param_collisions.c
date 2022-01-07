
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DRIVER_CONFIG_NAME ;
 int EINVAL ;
 int IOV_CONFIG_NAME ;
 scalar_t__ nvlist_exists (int const*,char const*) ;
 int * nvlist_get_nvlist (int const*,int ) ;
 char* nvlist_next (int const*,int*,void**) ;

__attribute__((used)) static int
pci_iov_validate_param_collisions(const nvlist_t *dev_schema)
{
 const nvlist_t *iov_schema, *driver_schema;
 const char *name;
 void *it;
 int type;

 driver_schema = nvlist_get_nvlist(dev_schema, DRIVER_CONFIG_NAME);
 iov_schema = nvlist_get_nvlist(dev_schema, IOV_CONFIG_NAME);

 it = ((void*)0);
 while ((name = nvlist_next(driver_schema, &type, &it)) != ((void*)0)) {
  if (nvlist_exists(iov_schema, name))
   return (EINVAL);
 }

 return (0);
}
