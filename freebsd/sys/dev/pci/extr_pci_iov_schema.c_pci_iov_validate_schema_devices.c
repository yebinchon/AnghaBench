
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int PF_CONFIG_NAME ;
 int VF_SCHEMA_NAME ;
 char* nvlist_next (int const*,int*,void**) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
pci_iov_validate_schema_devices(const nvlist_t *dev_schema)
{
 const char *name;
 void *it;
 int type;

 it = ((void*)0);
 while ((name = nvlist_next(dev_schema, &type, &it)) != ((void*)0)) {
  if (strcmp(name, PF_CONFIG_NAME) != 0 &&
      strcmp(name, VF_SCHEMA_NAME) != 0)
   return (EINVAL);
 }

 return (0);
}
