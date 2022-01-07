
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
typedef int bhnd_nvram_type ;
struct TYPE_2__ {int (* op_getvar ) (struct bhnd_nvram_data*,void*,void*,size_t*,int ) ;} ;


 int stub1 (struct bhnd_nvram_data*,void*,void*,size_t*,int ) ;

int
bhnd_nvram_data_getvar(struct bhnd_nvram_data *nv, void *cookiep, void *buf,
    size_t *len, bhnd_nvram_type type)
{
 return (nv->cls->op_getvar(nv, cookiep, buf, len, type));
}
