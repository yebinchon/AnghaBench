
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
struct TYPE_2__ {size_t (* op_count ) (struct bhnd_nvram_data*) ;} ;


 size_t stub1 (struct bhnd_nvram_data*) ;

size_t
bhnd_nvram_data_count(struct bhnd_nvram_data *nv)
{
 return (nv->cls->op_count(nv));
}
