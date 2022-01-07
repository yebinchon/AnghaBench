
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ rev; } ;
typedef TYPE_1__ bhnd_sprom_layout ;


 TYPE_1__ const* bhnd_sprom_layouts ;
 size_t bhnd_sprom_num_layouts ;

__attribute__((used)) static const bhnd_sprom_layout *
bhnd_nvram_sprom_get_layout(uint8_t sromrev)
{

 for (size_t i = 0; i < bhnd_sprom_num_layouts; i++) {
  if (bhnd_sprom_layouts[i].rev == sromrev)
   return (&bhnd_sprom_layouts[i]);
 }


 return (((void*)0));
}
