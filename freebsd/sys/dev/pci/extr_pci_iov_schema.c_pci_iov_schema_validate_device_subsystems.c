
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DRIVER_CONFIG_NAME ;
 int EINVAL ;
 int IOV_CONFIG_NAME ;
 char* nvlist_next (int const*,int*,void**) ;
 scalar_t__ strcasecmp (char const*,int ) ;

__attribute__((used)) static int
pci_iov_schema_validate_device_subsystems(const nvlist_t *config)
{
 void *cookie;
 const char *name;
 int type;

 cookie = ((void*)0);
 while ((name = nvlist_next(config, &type, &cookie)) != ((void*)0)) {
  if (strcasecmp(name, IOV_CONFIG_NAME) == 0)
   continue;
  else if (strcasecmp(name, DRIVER_CONFIG_NAME) == 0)
   continue;

  return (EINVAL);
 }

 return (0);
}
