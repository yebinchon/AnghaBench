
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;


 void* bhnd_nvram_data_generic_find (struct bhnd_nvram_data*,char const*) ;

__attribute__((used)) static void *
bhnd_nvram_bcm_find(struct bhnd_nvram_data *nv, const char *name)
{
 return (bhnd_nvram_data_generic_find(nv, name));
}
