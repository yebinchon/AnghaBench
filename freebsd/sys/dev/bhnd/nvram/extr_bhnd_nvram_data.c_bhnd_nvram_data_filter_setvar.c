
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
typedef int bhnd_nvram_val ;
struct TYPE_2__ {int (* op_filter_setvar ) (struct bhnd_nvram_data*,char const*,int *,int **) ;} ;


 int stub1 (struct bhnd_nvram_data*,char const*,int *,int **) ;

int
bhnd_nvram_data_filter_setvar(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
 return (nv->cls->op_filter_setvar(nv, name, value, result));
}
