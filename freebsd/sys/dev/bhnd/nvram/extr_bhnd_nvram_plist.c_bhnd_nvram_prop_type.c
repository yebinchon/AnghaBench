
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bhnd_nvram_type ;
struct TYPE_3__ {int val; } ;
typedef TYPE_1__ bhnd_nvram_prop ;


 int bhnd_nvram_val_type (int ) ;

bhnd_nvram_type
bhnd_nvram_prop_type(bhnd_nvram_prop *prop)
{
 return (bhnd_nvram_val_type(prop->val));
}
