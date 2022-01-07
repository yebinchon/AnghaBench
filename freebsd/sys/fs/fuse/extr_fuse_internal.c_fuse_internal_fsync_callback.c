
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {int dummy; } ;
struct TYPE_3__ {scalar_t__ error; } ;
struct fuse_ticket {TYPE_2__* tk_data; TYPE_1__ tk_aw_ohead; } ;
struct TYPE_4__ {int mp; } ;


 scalar_t__ ENOSYS ;
 int fsess_set_notimpl (int ,int ) ;
 int fticket_opcode (struct fuse_ticket*) ;

int
fuse_internal_fsync_callback(struct fuse_ticket *tick, struct uio *uio)
{
 if (tick->tk_aw_ohead.error == ENOSYS) {
  fsess_set_notimpl(tick->tk_data->mp, fticket_opcode(tick));
 }
 return 0;
}
