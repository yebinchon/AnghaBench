
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int prop; } ;
typedef TYPE_1__ bhnd_nvram_plist_entry ;
struct TYPE_10__ {scalar_t__ num_entries; int entries; } ;
typedef TYPE_2__ bhnd_nvram_plist ;


 int BHND_NV_ASSERT (int,char*) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int bhnd_nv_free (TYPE_1__*) ;
 TYPE_1__* bhnd_nvram_plist_get_entry (TYPE_2__*,char const*) ;
 int bhnd_nvram_prop_release (int ) ;
 int pl_hash_link ;
 int pl_link ;

void
bhnd_nvram_plist_remove(bhnd_nvram_plist *plist, const char *name)
{
 bhnd_nvram_plist_entry *entry;


 entry = bhnd_nvram_plist_get_entry(plist, name);
 if (entry == ((void*)0))
  return;


 TAILQ_REMOVE(&plist->entries, entry, pl_link);
 LIST_REMOVE(entry, pl_hash_link);


 bhnd_nvram_prop_release(entry->prop);
 bhnd_nv_free(entry);


 BHND_NV_ASSERT(plist->num_entries > 0, ("entry count over-release"));
 plist->num_entries--;
}
