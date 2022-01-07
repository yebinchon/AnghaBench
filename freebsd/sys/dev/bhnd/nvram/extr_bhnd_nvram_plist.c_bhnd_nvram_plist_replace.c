
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
typedef TYPE_1__ bhnd_nvram_prop ;
struct TYPE_8__ {int prop; } ;
typedef TYPE_2__ bhnd_nvram_plist_entry ;
typedef int bhnd_nvram_plist ;


 int bhnd_nvram_plist_append (int *,TYPE_1__*) ;
 TYPE_2__* bhnd_nvram_plist_get_entry (int *,int ) ;
 int bhnd_nvram_prop_release (int ) ;
 int bhnd_nvram_prop_retain (TYPE_1__*) ;

int
bhnd_nvram_plist_replace(bhnd_nvram_plist *plist, bhnd_nvram_prop *prop)
{
 bhnd_nvram_plist_entry *entry;


 entry = bhnd_nvram_plist_get_entry(plist, prop->name);
 if (entry == ((void*)0)) {

  return (bhnd_nvram_plist_append(plist, prop));
 }


 bhnd_nvram_prop_release(entry->prop);
 entry->prop = bhnd_nvram_prop_retain(prop);

 return (0);
}
