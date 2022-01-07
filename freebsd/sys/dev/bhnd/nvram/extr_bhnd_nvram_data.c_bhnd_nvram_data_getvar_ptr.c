
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
typedef int bhnd_nvram_type ;
struct TYPE_2__ {void const* (* op_getvar_ptr ) (struct bhnd_nvram_data*,void*,size_t*,int *) ;} ;


 void const* stub1 (struct bhnd_nvram_data*,void*,size_t*,int *) ;

const void *
bhnd_nvram_data_getvar_ptr(struct bhnd_nvram_data *nv, void *cookiep,
    size_t *len, bhnd_nvram_type *type)
{
 return (nv->cls->op_getvar_ptr(nv, cookiep, len, type));
}
