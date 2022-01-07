
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct file {TYPE_1__* f_vnode; TYPE_2__* f_ops; } ;
typedef int off_t ;
struct TYPE_4__ {int fo_flags; } ;
struct TYPE_3__ {scalar_t__ v_type; } ;


 int DFLAG_SEEKABLE ;
 int EINVAL ;
 int ESPIPE ;
 int FOF_OFFSET ;
 scalar_t__ VCHR ;
 int cap_pwrite_rights ;
 int dofilewrite (struct thread*,int,struct file*,struct uio*,int ,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget_write (struct thread*,int,int *,struct file**) ;

int
kern_pwritev(struct thread *td, int fd, struct uio *auio, off_t offset)
{
 struct file *fp;
 int error;

 error = fget_write(td, fd, &cap_pwrite_rights, &fp);
 if (error)
  return (error);
 if (!(fp->f_ops->fo_flags & DFLAG_SEEKABLE))
  error = ESPIPE;
 else if (offset < 0 &&
     (fp->f_vnode == ((void*)0) || fp->f_vnode->v_type != VCHR))
  error = EINVAL;
 else
  error = dofilewrite(td, fd, fp, auio, offset, FOF_OFFSET);
 fdrop(fp, td);
 return (error);
}
