
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int NV_TYPE_NVLIST ;
 int nvlist_exists_nvlist (int const*,char const*) ;
 int * nvlist_get_nvlist (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 int pci_iov_validate_param_schema (int const*) ;

__attribute__((used)) static int
pci_iov_validate_subsystem_schema(const nvlist_t *dev_schema, const char *name)
{
 const nvlist_t *sub_schema, *param_schema;
 const char *param_name;
 void *it;
 int type, error;

 if (!nvlist_exists_nvlist(dev_schema, name))
  return (EINVAL);
 sub_schema = nvlist_get_nvlist(dev_schema, name);

 it = ((void*)0);
 while ((param_name = nvlist_next(sub_schema, &type, &it)) != ((void*)0)) {
  if (type != NV_TYPE_NVLIST)
   return (EINVAL);
  param_schema = nvlist_get_nvlist(sub_schema, param_name);

  error = pci_iov_validate_param_schema(param_schema);
  if (error != 0)
   return (error);
 }

 return (0);
}
