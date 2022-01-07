
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int nvlist_t ;


 int nvlist_add_bool (int *,char const*,int) ;
 int report_config_error (char const*,int const*,char*) ;
 int ucl_object_toboolean_safe (int const*,int*) ;

__attribute__((used)) static void
add_bool_config(const char *key, const ucl_object_t *obj, nvlist_t *config)
{
 bool val;

 if (!ucl_object_toboolean_safe(obj, &val))
  report_config_error(key, obj, "bool");

 nvlist_add_bool(config, key, val);
}
