
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

int
wild_jail_name(const char *wname)
{
 const char *wc;

 for (wc = strchr(wname, '*'); wc; wc = strchr(wc + 1, '*'))
  if ((wc == wname || wc[-1] == '.') &&
      (wc[1] == '\0' || wc[1] == '.'))
   return 1;
 return 0;
}
