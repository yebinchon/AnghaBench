
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_ticket {TYPE_1__* tk_data; int * tk_aw_handler; } ;
typedef int fuse_handler_t ;
struct TYPE_2__ {int aw_mtx; } ;


 scalar_t__ fdata_get_dead (TYPE_1__*) ;
 int fuse_aw_push (struct fuse_ticket*) ;
 int fuse_lck_mtx_lock (int ) ;
 int fuse_lck_mtx_unlock (int ) ;

void
fuse_insert_callback(struct fuse_ticket *ftick, fuse_handler_t * handler)
{
 if (fdata_get_dead(ftick->tk_data)) {
  return;
 }
 ftick->tk_aw_handler = handler;

 fuse_lck_mtx_lock(ftick->tk_data->aw_mtx);
 fuse_aw_push(ftick);
 fuse_lck_mtx_unlock(ftick->tk_data->aw_mtx);
}
