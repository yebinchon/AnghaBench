
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_open_args {TYPE_1__* a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_4__ {scalar_t__ fd_type; int fd_fd; } ;
struct TYPE_3__ {int td_dupfd; } ;


 int ENODEV ;
 scalar_t__ Froot ;
 TYPE_2__* VTOFDESC (struct vnode*) ;

__attribute__((used)) static int
fdesc_open(struct vop_open_args *ap)
{
 struct vnode *vp = ap->a_vp;

 if (VTOFDESC(vp)->fd_type == Froot)
  return (0);
 ap->a_td->td_dupfd = VTOFDESC(vp)->fd_fd;
 return (ENODEV);
}
