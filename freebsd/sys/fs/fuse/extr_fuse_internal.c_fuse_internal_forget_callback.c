
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {int dummy; } ;
struct TYPE_4__ {scalar_t__ base; } ;
struct fuse_ticket {TYPE_2__ tk_ms_fiov; TYPE_1__* tk_data; } ;
struct fuse_in_header {int nodeid; } ;
struct TYPE_3__ {int mp; } ;


 int curthread ;
 int fuse_internal_forget_send (int ,int ,int *,int ,int) ;

int
fuse_internal_forget_callback(struct fuse_ticket *ftick, struct uio *uio)
{
 fuse_internal_forget_send(ftick->tk_data->mp, curthread, ((void*)0),
     ((struct fuse_in_header *)ftick->tk_ms_fiov.base)->nodeid, 1);

 return 0;
}
