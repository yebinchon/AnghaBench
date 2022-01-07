
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bhnd_nvram_prop ;
struct TYPE_3__ {int * prop; } ;
typedef TYPE_1__ bhnd_nvram_plist_entry ;
typedef int bhnd_nvram_plist ;


 TYPE_1__* bhnd_nvram_plist_get_entry (int *,char const*) ;

bhnd_nvram_prop *
bhnd_nvram_plist_get_prop(bhnd_nvram_plist *plist, const char *name)
{
 bhnd_nvram_plist_entry *entry;

 if ((entry = bhnd_nvram_plist_get_entry(plist, name)) == ((void*)0))
  return (((void*)0));

 return (entry->prop);
}
