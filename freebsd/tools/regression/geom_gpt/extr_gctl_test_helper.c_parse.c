
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int PATH_MAX ;
 char* calloc (int,int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static int
parse(char *arg, char **param, char **value, int *len)
{
 char *e, *colon, *equal;

 if (*arg == '\0')
  return (EINVAL);

 colon = strchr(arg, ':');
 equal = strchr(arg, '=');
 if (colon == ((void*)0) && equal == ((void*)0))
  return (EINVAL);
 if (colon == arg || equal == arg)
  return (EINVAL);
 if (colon != ((void*)0) && equal != ((void*)0) && equal < colon)
  return (EINVAL);

 if (colon != ((void*)0))
  *colon++ = '\0';
 if (equal != ((void*)0))
  *equal++ = '\0';

 *param = arg;
 if (colon != ((void*)0)) {

  if (*colon == '\0')
   return (EINVAL);
  *len = strtol(colon, &e, 0);
  if (*e != '\0')
   return (EINVAL);
  if (*len <= 0 || *len > PATH_MAX)
   return (EINVAL);
  *value = calloc(*len, sizeof(char));
  if (*value == ((void*)0))
   return (ENOMEM);
  if (equal != ((void*)0)) {
   if (strlen(equal) >= PATH_MAX)
    return (ENOMEM);
   strcpy(*value, equal);
  }
 } else {

  *len = -1;
  if (*equal == '\0')
   return (EINVAL);
  *value = equal;
 }

 return (0);
}
