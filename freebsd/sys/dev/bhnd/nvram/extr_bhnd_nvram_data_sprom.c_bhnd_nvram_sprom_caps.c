
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_nvram_data {int dummy; } ;


 int BHND_NVRAM_DATA_CAP_INDEXED ;

__attribute__((used)) static uint32_t
bhnd_nvram_sprom_caps(struct bhnd_nvram_data *nv)
{
 return (BHND_NVRAM_DATA_CAP_INDEXED);
}
