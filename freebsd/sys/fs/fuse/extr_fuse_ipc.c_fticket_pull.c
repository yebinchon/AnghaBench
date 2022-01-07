
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int dummy; } ;
struct TYPE_2__ {scalar_t__ error; } ;
struct fuse_ticket {TYPE_1__ tk_aw_ohead; } ;


 int fticket_aw_pull_uio (struct fuse_ticket*,struct uio*) ;
 int fuse_body_audit (struct fuse_ticket*,int ) ;
 int uio_resid (struct uio*) ;

int
fticket_pull(struct fuse_ticket *ftick, struct uio *uio)
{
 int err = 0;

 if (ftick->tk_aw_ohead.error) {
  return 0;
 }
 err = fuse_body_audit(ftick, uio_resid(uio));
 if (!err) {
  err = fticket_aw_pull_uio(ftick, uio);
 }
 return err;
}
