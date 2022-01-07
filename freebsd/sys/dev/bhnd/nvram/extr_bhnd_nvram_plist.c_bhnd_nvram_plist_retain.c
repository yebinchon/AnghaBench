
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ bhnd_nvram_plist ;


 int BHND_NV_ASSERT (int,char*) ;
 int refcount_acquire (int*) ;

bhnd_nvram_plist *
bhnd_nvram_plist_retain(bhnd_nvram_plist *plist)
{
 BHND_NV_ASSERT(plist->refs >= 1, ("plist over-released"));

 refcount_acquire(&plist->refs);
 return (plist);
}
