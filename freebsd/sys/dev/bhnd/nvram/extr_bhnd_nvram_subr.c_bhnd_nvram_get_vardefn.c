
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_vardefn {int dummy; } ;


 size_t bhnd_nvram_num_vardefns ;
 struct bhnd_nvram_vardefn const* bhnd_nvram_vardefns ;

const struct bhnd_nvram_vardefn *
bhnd_nvram_get_vardefn(size_t id)
{
 if (id >= bhnd_nvram_num_vardefns)
  return (((void*)0));

 return (&bhnd_nvram_vardefns[id]);
}
