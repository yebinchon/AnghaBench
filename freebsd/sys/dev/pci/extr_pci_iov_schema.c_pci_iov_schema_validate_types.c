
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int nvlist_exists_nvlist (int const*,char const*) ;
 int * nvlist_get_nvlist (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 int pci_iov_schema_validate_param (int const*,char const*,int const*) ;

__attribute__((used)) static int
pci_iov_schema_validate_types(const nvlist_t *schema, const nvlist_t *config)
{
 const nvlist_t *schema_param;
 void *cookie;
 const char *name;
 int type, error;

 cookie = ((void*)0);
 while ((name = nvlist_next(config, &type, &cookie)) != ((void*)0)) {
  if (!nvlist_exists_nvlist(schema, name))
   return (EINVAL);

  schema_param = nvlist_get_nvlist(schema, name);

  error = pci_iov_schema_validate_param(schema_param, name,
      config);

  if (error != 0)
   return (error);
 }

 return (0);
}
