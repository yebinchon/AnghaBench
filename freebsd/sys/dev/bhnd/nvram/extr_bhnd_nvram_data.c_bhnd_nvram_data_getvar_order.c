
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
struct TYPE_2__ {int (* op_getvar_order ) (struct bhnd_nvram_data*,void*,void*) ;} ;


 int stub1 (struct bhnd_nvram_data*,void*,void*) ;

int
bhnd_nvram_data_getvar_order(struct bhnd_nvram_data *nv, void *cookiep1,
    void *cookiep2)
{
 return (nv->cls->op_getvar_order(nv, cookiep1, cookiep2));
}
