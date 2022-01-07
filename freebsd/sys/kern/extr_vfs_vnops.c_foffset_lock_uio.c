
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_offset; } ;
struct file {int dummy; } ;


 int FOF_OFFSET ;
 int foffset_lock (struct file*,int) ;

void
foffset_lock_uio(struct file *fp, struct uio *uio, int flags)
{

 if ((flags & FOF_OFFSET) == 0)
  uio->uio_offset = foffset_lock(fp, flags);
}
