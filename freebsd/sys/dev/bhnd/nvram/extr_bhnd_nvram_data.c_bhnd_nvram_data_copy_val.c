
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
typedef int bhnd_nvram_val ;
struct TYPE_2__ {int (* op_copy_val ) (struct bhnd_nvram_data*,void*,int **) ;} ;


 int stub1 (struct bhnd_nvram_data*,void*,int **) ;

int
bhnd_nvram_data_copy_val(struct bhnd_nvram_data *nv, void *cookiep,
    bhnd_nvram_val **value)
{
 return (nv->cls->op_copy_val(nv, cookiep, value));
}
