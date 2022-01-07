
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bhnd_nvram_val ;
struct TYPE_3__ {int * val; } ;
typedef TYPE_1__ bhnd_nvram_prop ;



bhnd_nvram_val *
bhnd_nvram_prop_val(bhnd_nvram_prop *prop)
{
 return (prop->val);
}
