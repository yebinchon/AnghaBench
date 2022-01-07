
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
struct TYPE_2__ {void* (* op_find ) (struct bhnd_nvram_data*,char const*) ;} ;


 void* stub1 (struct bhnd_nvram_data*,char const*) ;

void *
bhnd_nvram_data_find(struct bhnd_nvram_data *nv, const char *name)
{
 return (nv->cls->op_find(nv, name));
}
