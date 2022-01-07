
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_data {TYPE_1__* cls; int refs; } ;
struct TYPE_2__ {int (* op_free ) (struct bhnd_nvram_data*) ;} ;


 int bhnd_nv_free (struct bhnd_nvram_data*) ;
 int refcount_release (int *) ;
 int stub1 (struct bhnd_nvram_data*) ;

void
bhnd_nvram_data_release(struct bhnd_nvram_data *nv)
{
 if (!refcount_release(&nv->refs))
  return;


 nv->cls->op_free(nv);


 bhnd_nv_free(nv);
}
