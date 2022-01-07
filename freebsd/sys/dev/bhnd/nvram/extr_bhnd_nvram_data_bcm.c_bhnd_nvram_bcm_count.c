
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcm {size_t count; } ;



size_t
bhnd_nvram_bcm_count(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_bcm *bcm = (struct bhnd_nvram_bcm *)nv;
 return (bcm->count);
}
