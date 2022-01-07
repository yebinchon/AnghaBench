
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int name; } ;
typedef TYPE_1__ bhnd_nvram_prop ;
struct TYPE_13__ {TYPE_1__* prop; } ;
typedef TYPE_2__ bhnd_nvram_plist_entry ;
struct TYPE_14__ {int entries; } ;
typedef TYPE_3__ bhnd_nvram_plist ;


 TYPE_2__* TAILQ_FIRST (int *) ;
 TYPE_2__* TAILQ_NEXT (TYPE_2__*,int ) ;
 TYPE_2__* bhnd_nvram_plist_get_entry (TYPE_3__*,int ) ;
 int pl_link ;

bhnd_nvram_prop *
bhnd_nvram_plist_next(bhnd_nvram_plist *plist, bhnd_nvram_prop *prop)
{
 bhnd_nvram_plist_entry *entry;

 if (prop == ((void*)0)) {
  if ((entry = TAILQ_FIRST(&plist->entries)) == ((void*)0))
   return (((void*)0));

  return (entry->prop);
 }


 if ((entry = bhnd_nvram_plist_get_entry(plist, prop->name)) == ((void*)0))
  return (((void*)0));


 if (entry->prop != prop)
  return (((void*)0));


 if ((entry = TAILQ_NEXT(entry, pl_link)) == ((void*)0))
  return (((void*)0));

 return (entry->prop);
}
