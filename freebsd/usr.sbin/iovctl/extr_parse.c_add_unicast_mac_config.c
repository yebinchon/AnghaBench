
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ucl_object_t ;
typedef scalar_t__ u_long ;
typedef int nvlist_t ;


 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_IS_MULTICAST (scalar_t__*) ;
 scalar_t__ UINT8_MAX ;
 int errx (int,char*,int ,char const*) ;
 int free (char*) ;
 int nvlist_add_binary (int *,char const*,scalar_t__*,int) ;
 int report_config_error (char const*,int const*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 char* strtok_r (char*,char*,char**) ;
 scalar_t__ strtoul (char const*,char**,int) ;
 int ucl_object_tostring (int const*) ;
 int ucl_object_tostring_safe (int const*,char const**) ;

__attribute__((used)) static void
add_unicast_mac_config(const char *key, const ucl_object_t *obj, nvlist_t *config)
{
 uint8_t mac[ETHER_ADDR_LEN];
 const char *val, *token;
 char *parse, *orig_parse, *tokpos, *endpos;
 size_t len;
 u_long value;
 int i;

 if (!ucl_object_tostring_safe(obj, &val))
  report_config_error(key, obj, "unicast-mac");

 parse = strdup(val);
 orig_parse = parse;

 i = 0;
 while ((token = strtok_r(parse, ":", &tokpos)) != ((void*)0)) {
  parse = ((void*)0);

  len = strlen(token);
  if (len < 1 || len > 2)
   report_config_error(key, obj, "unicast-mac");

  value = strtoul(token, &endpos, 16);

  if (*endpos != '\0')
   report_config_error(key, obj, "unicast-mac");

  if (value > UINT8_MAX)
   report_config_error(key, obj, "unicast-mac");

  if (i >= ETHER_ADDR_LEN)
   report_config_error(key, obj, "unicast-mac");

  mac[i] = value;
  i++;
 }

 free(orig_parse);

 if (i != ETHER_ADDR_LEN)
  report_config_error(key, obj, "unicast-mac");

 if (ETHER_IS_MULTICAST(mac))
  errx(1, "Value '%s' of key '%s' is a multicast address",
      ucl_object_tostring(obj), key);

 nvlist_add_binary(config, key, mac, ETHER_ADDR_LEN);
}
