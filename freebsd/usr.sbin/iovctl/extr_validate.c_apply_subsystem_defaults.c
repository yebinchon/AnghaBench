
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;







 int errx (int,char*,int) ;
 int nvlist_add_binary (int *,char const*,void const*,size_t) ;
 int nvlist_add_bool (int *,char const*,int ) ;
 int nvlist_add_number (int *,char const*,int ) ;
 int nvlist_add_nvlist (int *,char const*,int *) ;
 int nvlist_add_string (int *,char const*,int ) ;
 scalar_t__ nvlist_exists (int *,char const*) ;
 void* nvlist_get_binary (int const*,char const*,size_t*) ;
 int nvlist_get_bool (int const*,char const*) ;
 int nvlist_get_number (int const*,char const*) ;
 int * nvlist_get_nvlist (int const*,char const*) ;
 int nvlist_get_string (int const*,char const*) ;
 int nvlist_move_nvlist (int *,char const*,int *) ;
 char* nvlist_next (int const*,int*,void**) ;
 int * nvlist_take_nvlist (int *,char const*) ;

__attribute__((used)) static void
apply_subsystem_defaults(nvlist_t *device_config, const char *subsystem,
    const nvlist_t *device_defaults)
{
 nvlist_t *config;
 const nvlist_t *defaults;
 const char *name;
 void *cookie;
 size_t len;
 const void *bin;
 int type;

 config = nvlist_take_nvlist(device_config, subsystem);
 defaults = nvlist_get_nvlist(device_defaults, subsystem);

 cookie = ((void*)0);
 while ((name = nvlist_next(defaults, &type, &cookie)) != ((void*)0)) {
  if (nvlist_exists(config, name))
   continue;

  switch (type) {
  case 131:
   nvlist_add_bool(config, name,
       nvlist_get_bool(defaults, name));
   break;
  case 130:
   nvlist_add_number(config, name,
       nvlist_get_number(defaults, name));
   break;
  case 128:
   nvlist_add_string(config, name,
       nvlist_get_string(defaults, name));
   break;
  case 129:
   nvlist_add_nvlist(config, name,
       nvlist_get_nvlist(defaults, name));
   break;
  case 132:
   bin = nvlist_get_binary(defaults, name, &len);
   nvlist_add_binary(config, name, bin, len);
   break;
  default:
   errx(1, "Unexpected type '%d'", type);
  }
 }
 nvlist_move_nvlist(device_config, subsystem, config);
}
