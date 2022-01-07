
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_vardefn {int dummy; } ;


 int BHND_NV_ASSERT (int,char*) ;
 int bhnd_nvram_num_vardefns ;
 struct bhnd_nvram_vardefn const* bhnd_nvram_vardefns ;

size_t
bhnd_nvram_get_vardefn_id(const struct bhnd_nvram_vardefn *defn)
{
 BHND_NV_ASSERT(
     defn >= bhnd_nvram_vardefns &&
     defn <= &bhnd_nvram_vardefns[bhnd_nvram_num_vardefns-1],
     ("invalid variable definition pointer %p", defn));

 return (defn - bhnd_nvram_vardefns);
}
