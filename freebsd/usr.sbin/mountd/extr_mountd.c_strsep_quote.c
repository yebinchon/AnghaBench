
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static char *
strsep_quote(char **stringp, const char *delim)
{
 char *srcptr, *dstptr, *retval;
 char quot = 0;

 if (stringp == ((void*)0) || *stringp == ((void*)0))
  return (((void*)0));

 srcptr = dstptr = retval = *stringp;

 while (*srcptr) {
  if (*srcptr == '\\') {
   srcptr++;





   if (*srcptr) {
    *dstptr++ = *srcptr++;
   }
   continue;
  }
  if (quot == 0 && (*srcptr == '\'' || *srcptr == '"')) {
   quot = *srcptr++;
   continue;
  }
  if (quot && *srcptr == quot) {

   quot = 0;
   srcptr++;
   continue;
  }
  if (!quot && strchr(delim, *srcptr))
   break;
  *dstptr++ = *srcptr++;
 }

 *stringp = (*srcptr == '\0') ? ((void*)0) : srcptr + 1;
 *dstptr = 0;
 return (retval);
}
