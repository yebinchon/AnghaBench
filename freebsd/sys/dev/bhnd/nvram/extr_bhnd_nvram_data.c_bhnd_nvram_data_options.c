
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; } ;
typedef int bhnd_nvram_plist ;
struct TYPE_2__ {int * (* op_options ) (struct bhnd_nvram_data*) ;} ;


 int * stub1 (struct bhnd_nvram_data*) ;

bhnd_nvram_plist *
bhnd_nvram_data_options(struct bhnd_nvram_data *nv)
{
 return (nv->cls->op_options(nv));
}
