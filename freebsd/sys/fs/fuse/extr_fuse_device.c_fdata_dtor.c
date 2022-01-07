
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int tk_aw_mtx; int tk_aw_errno; } ;
struct fuse_data {int ms_mtx; int aw_mtx; int ks_rsel; } ;


 int ENOTCONN ;
 int FUSE_ASSERT_AW_DONE (struct fuse_ticket*) ;
 int FUSE_LOCK () ;
 int FUSE_UNLOCK () ;
 scalar_t__ PZERO ;
 int fdata_set_dead (struct fuse_data*) ;
 int fdata_trydestroy (struct fuse_data*) ;
 int fticket_set_answered (struct fuse_ticket*) ;
 struct fuse_ticket* fuse_aw_pop (struct fuse_data*) ;
 int fuse_lck_mtx_lock (int ) ;
 int fuse_lck_mtx_unlock (int ) ;
 struct fuse_ticket* fuse_ms_pop (struct fuse_data*) ;
 int fuse_ticket_drop (struct fuse_ticket*) ;
 int selwakeuppri (int *,scalar_t__) ;
 int wakeup (struct fuse_ticket*) ;

__attribute__((used)) static void
fdata_dtor(void *arg)
{
 struct fuse_data *fdata;
 struct fuse_ticket *tick;

 fdata = arg;
 if (fdata == ((void*)0))
  return;

 fdata_set_dead(fdata);

 FUSE_LOCK();
 fuse_lck_mtx_lock(fdata->aw_mtx);

 selwakeuppri(&fdata->ks_rsel, PZERO + 1);

 while ((tick = fuse_aw_pop(fdata))) {
  fuse_lck_mtx_lock(tick->tk_aw_mtx);
  fticket_set_answered(tick);
  tick->tk_aw_errno = ENOTCONN;
  wakeup(tick);
  fuse_lck_mtx_unlock(tick->tk_aw_mtx);
  FUSE_ASSERT_AW_DONE(tick);
  fuse_ticket_drop(tick);
 }
 fuse_lck_mtx_unlock(fdata->aw_mtx);


 fuse_lck_mtx_lock(fdata->ms_mtx);
 while ((tick = fuse_ms_pop(fdata))) {
  fuse_ticket_drop(tick);
 }
 fuse_lck_mtx_unlock(fdata->ms_mtx);
 FUSE_UNLOCK();

 fdata_trydestroy(fdata);
}
