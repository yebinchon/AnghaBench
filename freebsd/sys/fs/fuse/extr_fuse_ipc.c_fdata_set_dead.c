
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_data {int ms_mtx; int ticketer; int ks_rsel; int dataflags; } ;


 int FSESS_DEAD ;
 int FUSE_LOCK () ;
 int FUSE_UNLOCK () ;
 scalar_t__ PZERO ;
 scalar_t__ fdata_get_dead (struct fuse_data*) ;
 int fuse_lck_mtx_lock (int ) ;
 int fuse_lck_mtx_unlock (int ) ;
 int selwakeuppri (int *,scalar_t__) ;
 int wakeup (int *) ;
 int wakeup_one (struct fuse_data*) ;

void
fdata_set_dead(struct fuse_data *data)
{
 FUSE_LOCK();
 if (fdata_get_dead(data)) {
  FUSE_UNLOCK();
  return;
 }
 fuse_lck_mtx_lock(data->ms_mtx);
 data->dataflags |= FSESS_DEAD;
 wakeup_one(data);
 selwakeuppri(&data->ks_rsel, PZERO + 1);
 wakeup(&data->ticketer);
 fuse_lck_mtx_unlock(data->ms_mtx);
 FUSE_UNLOCK();
}
