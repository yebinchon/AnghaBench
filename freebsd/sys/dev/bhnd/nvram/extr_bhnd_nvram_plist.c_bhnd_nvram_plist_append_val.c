
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_prop ;
typedef int bhnd_nvram_plist ;


 int ENOMEM ;
 int bhnd_nvram_plist_append (int *,int *) ;
 int * bhnd_nvram_prop_new (char const*,int *) ;
 int bhnd_nvram_prop_release (int *) ;

int
bhnd_nvram_plist_append_val(bhnd_nvram_plist *plist, const char *name,
    bhnd_nvram_val *val)
{
 bhnd_nvram_prop *prop;
 int error;

 if ((prop = bhnd_nvram_prop_new(name, val)) == ((void*)0))
  return (ENOMEM);

 error = bhnd_nvram_plist_append(plist, prop);
 bhnd_nvram_prop_release(prop);

 return (error);
}
