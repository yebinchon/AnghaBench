
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct fuse_data {scalar_t__ ref; int ms_mtx; TYPE_1__ ks_rsel; int aw_mtx; int daemoncred; int rename_lock; } ;


 int MPASS (int) ;
 int M_FUSEMSG ;
 int crfree (int ) ;
 int curthread ;
 int free (struct fuse_data*,int ) ;
 int knlist_delete (int *,int ,int ) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int sx_destroy (int *) ;

void
fdata_trydestroy(struct fuse_data *data)
{
 data->ref--;
 MPASS(data->ref >= 0);
 if (data->ref != 0)
  return;


 sx_destroy(&data->rename_lock);
 crfree(data->daemoncred);
 mtx_destroy(&data->aw_mtx);
 knlist_delete(&data->ks_rsel.si_note, curthread, 0);
 knlist_destroy(&data->ks_rsel.si_note);
 mtx_destroy(&data->ms_mtx);

 free(data, M_FUSEMSG);
}
