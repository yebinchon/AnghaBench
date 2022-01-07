
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_alias_data {scalar_t__ list; int v; scalar_t__ alias; } ;


 int git_config_string (char const**,char const*,char const*) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strcasecmp (char const*,scalar_t__) ;
 int string_list_append (scalar_t__,char const*) ;

__attribute__((used)) static int config_alias_cb(const char *key, const char *value, void *d)
{
 struct config_alias_data *data = d;
 const char *p;

 if (!skip_prefix(key, "alias.", &p))
  return 0;

 if (data->alias) {
  if (!strcasecmp(p, data->alias))
   return git_config_string((const char **)&data->v,
       key, value);
 } else if (data->list) {
  string_list_append(data->list, p);
 }

 return 0;
}
