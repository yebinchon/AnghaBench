
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bhnd_nv_isdigit (char const) ;
 char* strrchr (char const*,char) ;
 int strtoul (char const*,char**,int) ;

const char *
bhnd_nvram_trim_path_name(const char *name)
{
 char *endp;


 if (bhnd_nv_isdigit(*name)) {

  strtoul(name, &endp, 10);
  if (endp != name && *endp == ':') {

   return (endp+1);
  }
 }


 if ((endp = strrchr(name, '/')) != ((void*)0)) {

  return (endp+1);
 }


 return (name);
}
