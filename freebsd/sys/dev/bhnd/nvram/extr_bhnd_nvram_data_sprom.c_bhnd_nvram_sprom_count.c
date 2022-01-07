
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_sprom {TYPE_1__* layout; } ;
struct bhnd_nvram_data {int dummy; } ;
struct TYPE_2__ {size_t num_vars; } ;



size_t
bhnd_nvram_sprom_count(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_sprom *sprom = (struct bhnd_nvram_sprom *)nv;
 return (sprom->layout->num_vars);
}
