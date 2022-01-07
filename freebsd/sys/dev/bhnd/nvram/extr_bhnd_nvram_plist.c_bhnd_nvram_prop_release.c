
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; struct TYPE_4__* name; int val; } ;
typedef TYPE_1__ bhnd_nvram_prop ;


 int BHND_NV_ASSERT (int,char*) ;
 int bhnd_nv_free (TYPE_1__*) ;
 int bhnd_nvram_val_release (int ) ;
 int refcount_release (int*) ;

void
bhnd_nvram_prop_release(bhnd_nvram_prop *prop)
{
 BHND_NV_ASSERT(prop->refs >= 1, ("prop over-released"));


 if (!refcount_release(&prop->refs))
  return;


 bhnd_nvram_val_release(prop->val);
 bhnd_nv_free(prop->name);
 bhnd_nv_free(prop);
}
