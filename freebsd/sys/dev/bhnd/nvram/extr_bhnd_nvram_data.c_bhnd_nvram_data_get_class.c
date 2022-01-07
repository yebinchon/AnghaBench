
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int * cls; } ;
typedef int bhnd_nvram_data_class ;



bhnd_nvram_data_class *
bhnd_nvram_data_get_class(struct bhnd_nvram_data *nv)
{
 return (nv->cls);
}
