
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_prop ;
typedef int bhnd_nvram_plist ;


 int * bhnd_nvram_plist_get_prop (int *,char const*) ;
 int * bhnd_nvram_prop_val (int *) ;

bhnd_nvram_val *
bhnd_nvram_plist_get_val(bhnd_nvram_plist *plist, const char *name)
{
 bhnd_nvram_prop *prop;

 if ((prop = bhnd_nvram_plist_get_prop(plist, name)) == ((void*)0))
  return (((void*)0));

 return (bhnd_nvram_prop_val(prop));
}
