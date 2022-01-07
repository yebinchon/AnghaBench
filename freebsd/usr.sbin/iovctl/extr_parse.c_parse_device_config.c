
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int * ucl_object_iter_t ;
typedef int nvlist_t ;


 char const* DRIVER_CONFIG_NAME ;
 char const* IOV_CONFIG_NAME ;
 int NV_FLAG_IGNORE_CASE ;
 int add_config (char const*,int const*,int *,int *) ;
 int err (int,char*) ;
 int errx (int,char*,char const*,...) ;
 int * nvlist_create (int ) ;
 scalar_t__ nvlist_exists (int *,char const*) ;
 scalar_t__ nvlist_exists_nvlist (int const*,char const*) ;
 int * nvlist_get_nvlist (int const*,char const*) ;
 int nvlist_move_nvlist (int *,char const*,int *) ;
 int * ucl_iterate_object (int const*,int **,int) ;
 char* ucl_object_key (int const*) ;

__attribute__((used)) static void
parse_device_config(const ucl_object_t *top, nvlist_t *config,
    const char *subsystem, const nvlist_t *schema)
{
 ucl_object_iter_t it;
 const ucl_object_t *obj;
 nvlist_t *subsystem_config, *driver_config, *iov_config;
 const nvlist_t *driver_schema, *iov_schema;
 const char *key;

 if (nvlist_exists(config, subsystem))
  errx(1, "Multiple definitions of '%s' in config file",
      subsystem);

 driver_schema = nvlist_get_nvlist(schema, DRIVER_CONFIG_NAME);
 iov_schema = nvlist_get_nvlist(schema, IOV_CONFIG_NAME);

 driver_config = nvlist_create(NV_FLAG_IGNORE_CASE);
 if (driver_config == ((void*)0))
  err(1, "Could not allocate config nvlist");

 iov_config = nvlist_create(NV_FLAG_IGNORE_CASE);
 if (iov_config == ((void*)0))
  err(1, "Could not allocate config nvlist");

 subsystem_config = nvlist_create(NV_FLAG_IGNORE_CASE);
 if (subsystem_config == ((void*)0))
  err(1, "Could not allocate config nvlist");

 it = ((void*)0);
 while ((obj = ucl_iterate_object(top, &it, 1)) != ((void*)0)) {
  key = ucl_object_key(obj);

  if (nvlist_exists_nvlist(iov_schema, key))
   add_config(key, obj, iov_config,
       nvlist_get_nvlist(iov_schema, key));
  else if (nvlist_exists_nvlist(driver_schema, key))
   add_config(key, obj, driver_config,
       nvlist_get_nvlist(driver_schema, key));
  else
   errx(1, "%s: Invalid config key '%s'", subsystem, key);
 }

 nvlist_move_nvlist(subsystem_config, DRIVER_CONFIG_NAME, driver_config);
 nvlist_move_nvlist(subsystem_config, IOV_CONFIG_NAME, iov_config);
 nvlist_move_nvlist(config, subsystem, subsystem_config);
}
