
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bhnd_nvram_type ;
struct TYPE_3__ {int val; } ;
typedef TYPE_1__ bhnd_nvram_prop ;


 int bhnd_nvram_val_encode (int ,void*,size_t*,int ) ;

int
bhnd_nvram_prop_encode(bhnd_nvram_prop *prop, void *outp, size_t *olen,
    bhnd_nvram_type otype)
{
 return (bhnd_nvram_val_encode(prop->val, outp, olen, otype));
}
