
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int nvlist_t ;


 int TYPE_SCHEMA_NAME ;
 int UINT16_MAX ;
 int UINT32_MAX ;
 int UINT64_MAX ;
 int UINT8_MAX ;
 int add_bool_config (char const*,int const*,int *) ;
 int add_string_config (char const*,int const*,int *) ;
 int add_uint_config (char const*,int const*,int *,char const*,int ) ;
 int add_unicast_mac_config (char const*,int const*,int *) ;
 int errx (int,char*,char const*) ;
 char* nvlist_get_string (int const*,int ) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static void
add_config(const char *key, const ucl_object_t *obj, nvlist_t *config,
    const nvlist_t *schema)
{
 const char *type;

 type = nvlist_get_string(schema, TYPE_SCHEMA_NAME);

 if (strcasecmp(type, "bool") == 0)
  add_bool_config(key, obj, config);
 else if (strcasecmp(type, "string") == 0)
  add_string_config(key, obj, config);
 else if (strcasecmp(type, "uint8_t") == 0)
  add_uint_config(key, obj, config, type, UINT8_MAX);
 else if (strcasecmp(type, "uint16_t") == 0)
  add_uint_config(key, obj, config, type, UINT16_MAX);
 else if (strcasecmp(type, "uint32_t") == 0)
  add_uint_config(key, obj, config, type, UINT32_MAX);
 else if (strcasecmp(type, "uint64_t") == 0)
  add_uint_config(key, obj, config, type, UINT64_MAX);
 else if (strcasecmp(type, "unicast-mac") == 0)
  add_unicast_mac_config(key, obj, config);
 else
  errx(1, "Unexpected type '%s' in schema", type);
}
