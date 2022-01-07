
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ICDEBUG (char*,char*) ;
 scalar_t__ strcmp (char*,char const*) ;

int
iconv_lookupcp(char **cpp, const char *s)
{
 if (cpp == ((void*)0)) {
  ICDEBUG("warning a NULL list passed\n", "");
  return ENOENT;
 }
 for (; *cpp; cpp++)
  if (strcmp(*cpp, s) == 0)
   return 0;
 return ENOENT;
}
