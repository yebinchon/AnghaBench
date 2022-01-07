
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_11__ {int name; } ;
typedef TYPE_1__ bhnd_nvram_prop ;
typedef int bhnd_nvram_plist_entry_list ;
struct TYPE_12__ {int prop; } ;
typedef TYPE_2__ bhnd_nvram_plist_entry ;
struct TYPE_13__ {scalar_t__ num_entries; int * names; int entries; } ;
typedef TYPE_3__ bhnd_nvram_plist ;


 int EEXIST ;
 int ENOMEM ;
 int HASHINIT ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 scalar_t__ SIZE_MAX ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 TYPE_2__* bhnd_nv_malloc (int) ;
 scalar_t__ bhnd_nvram_plist_contains (TYPE_3__*,int ) ;
 int bhnd_nvram_prop_retain (TYPE_1__*) ;
 size_t hash32_str (int ,int ) ;
 size_t nitems (int *) ;
 int pl_hash_link ;
 int pl_link ;

int
bhnd_nvram_plist_append(bhnd_nvram_plist *plist, bhnd_nvram_prop *prop)
{
 bhnd_nvram_plist_entry_list *hash_list;
 bhnd_nvram_plist_entry *entry;
 uint32_t h;

 if (bhnd_nvram_plist_contains(plist, prop->name))
  return (EEXIST);


 if (plist->num_entries == SIZE_MAX)
  return (ENOMEM);


 entry = bhnd_nv_malloc(sizeof(*entry));
 if (entry == ((void*)0))
  return (ENOMEM);

 entry->prop = bhnd_nvram_prop_retain(prop);


 TAILQ_INSERT_TAIL(&plist->entries, entry, pl_link);


 h = hash32_str(prop->name, HASHINIT);
 hash_list = &plist->names[h % nitems(plist->names)];
 LIST_INSERT_HEAD(hash_list, entry, pl_hash_link);


 plist->num_entries++;

 return (0);
}
