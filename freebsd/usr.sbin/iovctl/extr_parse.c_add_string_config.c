
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int nvlist_t ;


 int nvlist_add_string (int *,char const*,char const*) ;
 int report_config_error (char const*,int const*,char*) ;
 int ucl_object_tostring_safe (int const*,char const**) ;

__attribute__((used)) static void
add_string_config(const char *key, const ucl_object_t *obj, nvlist_t *config)
{
 const char *val;

 if (!ucl_object_tostring_safe(obj, &val))
  report_config_error(key, obj, "string");

 nvlist_add_string(config, key, val);
}
