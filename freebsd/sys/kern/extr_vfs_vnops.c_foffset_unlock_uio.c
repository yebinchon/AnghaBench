
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_offset; } ;
struct file {int dummy; } ;


 int FOF_OFFSET ;
 int foffset_unlock (struct file*,int ,int) ;

void
foffset_unlock_uio(struct file *fp, struct uio *uio, int flags)
{

 if ((flags & FOF_OFFSET) == 0)
  foffset_unlock(fp, uio->uio_offset, flags);
}
