
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ucl_object_t ;
typedef int nvlist_t ;
typedef scalar_t__ int64_t ;


 int nvlist_add_number (int *,char const*,scalar_t__) ;
 int report_config_error (char const*,int const*,char const*) ;
 int ucl_object_toint_safe (int const*,scalar_t__*) ;

__attribute__((used)) static void
add_uint_config(const char *key, const ucl_object_t *obj, nvlist_t *config,
    const char *type, uint64_t max)
{
 int64_t val;
 uint64_t uval;


 if (!ucl_object_toint_safe(obj, &val))
  report_config_error(key, obj, type);

 if (val < 0)
  report_config_error(key, obj, type);

 uval = val;
 if (uval > max)
  report_config_error(key, obj, type);

 nvlist_add_number(config, key, uval);
}
