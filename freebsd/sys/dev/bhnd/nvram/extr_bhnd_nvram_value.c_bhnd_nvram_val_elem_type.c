
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data_type; } ;
typedef TYPE_1__ bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int bhnd_nvram_base_type (int ) ;

bhnd_nvram_type
bhnd_nvram_val_elem_type(bhnd_nvram_val *value)
{
 return (bhnd_nvram_base_type(value->data_type));
}
