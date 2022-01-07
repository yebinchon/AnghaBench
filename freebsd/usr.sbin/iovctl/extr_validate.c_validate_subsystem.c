
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int REQUIRED_SCHEMA_NAME ;
 scalar_t__ dnvlist_get_bool (int const*,int ,int) ;
 int errx (int,char*,char const*,char const*) ;
 int nvlist_exists (int const*,char const*) ;
 int * nvlist_get_nvlist (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;

__attribute__((used)) static void
validate_subsystem(const nvlist_t *device, const nvlist_t *device_schema,
    const char *subsystem_name, const char *config_name)
{
 const nvlist_t *subsystem, *schema, *config;
 const char *name;
 void *cookie;
 int type;

 subsystem = nvlist_get_nvlist(device, subsystem_name);
 schema = nvlist_get_nvlist(device_schema, subsystem_name);

 cookie = ((void*)0);
 while ((name = nvlist_next(schema, &type, &cookie)) != ((void*)0)) {
  config = nvlist_get_nvlist(schema, name);

  if (dnvlist_get_bool(config, REQUIRED_SCHEMA_NAME, 0)) {
   if (!nvlist_exists(subsystem, name))
    errx(1,
        "Required parameter '%s' not found in '%s'",
        name, config_name);
  }
 }
}
