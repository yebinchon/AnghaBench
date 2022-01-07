
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_entries; } ;
typedef TYPE_1__ bhnd_nvram_plist ;



size_t
bhnd_nvram_plist_count(bhnd_nvram_plist *plist)
{
 return (plist->num_entries);
}
