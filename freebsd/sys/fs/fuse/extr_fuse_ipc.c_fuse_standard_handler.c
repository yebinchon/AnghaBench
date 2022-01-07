
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct fuse_ticket {int tk_aw_errno; int tk_aw_mtx; } ;


 int fticket_answered (struct fuse_ticket*) ;
 int fticket_pull (struct fuse_ticket*,struct uio*) ;
 int fticket_set_answered (struct fuse_ticket*) ;
 int fuse_lck_mtx_lock (int ) ;
 int fuse_lck_mtx_unlock (int ) ;
 int wakeup (struct fuse_ticket*) ;

__attribute__((used)) static int
fuse_standard_handler(struct fuse_ticket *ftick, struct uio *uio)
{
 int err = 0;

 err = fticket_pull(ftick, uio);

 fuse_lck_mtx_lock(ftick->tk_aw_mtx);

 if (!fticket_answered(ftick)) {
  fticket_set_answered(ftick);
  ftick->tk_aw_errno = err;
  wakeup(ftick);
 }
 fuse_lck_mtx_unlock(ftick->tk_aw_mtx);

 return err;
}
