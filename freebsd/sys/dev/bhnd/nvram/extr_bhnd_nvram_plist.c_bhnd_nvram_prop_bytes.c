
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ bhnd_nvram_type ;
struct TYPE_4__ {int val; } ;
typedef TYPE_1__ bhnd_nvram_prop ;


 int BHND_NV_ASSERT (int,char*) ;
 scalar_t__ bhnd_nvram_prop_type (TYPE_1__*) ;
 void* bhnd_nvram_val_bytes (int ,size_t*,scalar_t__*) ;

const void *
bhnd_nvram_prop_bytes(bhnd_nvram_prop *prop, size_t *olen,
    bhnd_nvram_type *otype)
{
 const void *bytes;

 bytes = bhnd_nvram_val_bytes(prop->val, olen, otype);
 BHND_NV_ASSERT(*otype == bhnd_nvram_prop_type(prop), ("type mismatch"));

 return (bytes);
}
