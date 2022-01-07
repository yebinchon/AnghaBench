
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ bhnd_nvram_prop ;


 int BHND_NV_ASSERT (int,char*) ;
 int refcount_acquire (int*) ;

bhnd_nvram_prop *
bhnd_nvram_prop_retain(bhnd_nvram_prop *prop)
{
 BHND_NV_ASSERT(prop->refs >= 1, ("prop over-released"));

 refcount_acquire(&prop->refs);
 return (prop);
}
