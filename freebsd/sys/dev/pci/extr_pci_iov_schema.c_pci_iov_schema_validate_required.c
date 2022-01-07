
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const nvlist_t ;


 int EINVAL ;
 scalar_t__ dnvlist_get_bool (int const*,char*,int ) ;
 int nvlist_error (int const*) ;
 scalar_t__ nvlist_exists (int const*,char const*) ;
 int const* nvlist_get_nvlist (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 int pci_iov_config_add_default (int const*,char const*,int const*) ;

__attribute__((used)) static int
pci_iov_schema_validate_required(const nvlist_t *schema, nvlist_t *config)
{
 const nvlist_t *param_schema;
 const char *name;
 void *cookie;
 int type;

 cookie = ((void*)0);
 while ((name = nvlist_next(schema, &type, &cookie)) != ((void*)0)) {
  param_schema = nvlist_get_nvlist(schema, name);

  if (dnvlist_get_bool(param_schema, "required", 0)) {
   if (!nvlist_exists(config, name))
    return (EINVAL);
  }

  if (nvlist_exists(param_schema, "default") &&
      !nvlist_exists(config, name))
   pci_iov_config_add_default(param_schema, name, config);
 }

 return (nvlist_error(config));
}
