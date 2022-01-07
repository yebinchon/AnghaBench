
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;
 int strcspn (char const*,char*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static const char *parse_feature_value(const char *feature_list, const char *feature, int *lenp)
{
 int len;

 if (!feature_list)
  return ((void*)0);

 len = strlen(feature);
 while (*feature_list) {
  const char *found = strstr(feature_list, feature);
  if (!found)
   return ((void*)0);
  if (feature_list == found || isspace(found[-1])) {
   const char *value = found + len;

   if (!*value || isspace(*value)) {
    if (lenp)
     *lenp = 0;
    return value;
   }

   else if (*value == '=') {
    value++;
    if (lenp)
     *lenp = strcspn(value, " \t\n");
    return value;
   }




  }
  feature_list = found + 1;
 }
 return ((void*)0);
}
