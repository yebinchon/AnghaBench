
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
struct TYPE_2__ {int (* op_filter_unsetvar ) (struct bhnd_nvram_data*,char const*) ;} ;


 int stub1 (struct bhnd_nvram_data*,char const*) ;

int
bhnd_nvram_data_filter_unsetvar(struct bhnd_nvram_data *nv, const char *name)
{
 return (nv->cls->op_filter_unsetvar(nv, name));
}
