
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int * strchr (char const* const,char) ;
 scalar_t__ strcmp (char*,char const* const) ;

__attribute__((used)) static int
getsubopt1(char **arg, const char *const *options, char **valp, char **optp)
{
 static const char *const delim = ",\t ";
 u_int i;
 char *ptr;

 *optp = ((void*)0);


 for (ptr = *arg; *ptr != '\0'; ptr++)
  if (strchr(delim, *ptr) == ((void*)0))
   break;
 if (*ptr == '\0') {
  *arg = ptr;
  return (-1);
 }
 *optp = ptr;


 while (*++ptr != '\0')
  if (strchr(delim, *ptr) != ((void*)0) || *ptr == '=')
   break;

 if (*ptr != '\0') {
  if (*ptr == '=') {
   *ptr++ = '\0';
   *valp = ptr;
   while (*ptr != '\0' && strchr(delim, *ptr) == ((void*)0))
    ptr++;
   if (*ptr != '\0')
    *ptr++ = '\0';
  } else
   *ptr++ = '\0';
 }

 *arg = ptr;

 for (i = 0; *options != ((void*)0); options++, i++)
  if (strcmp(*optp, *options) == 0)
   return (i);
 return (-1);
}
