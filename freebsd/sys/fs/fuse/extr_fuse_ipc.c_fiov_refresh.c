
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_iov {int dummy; } ;


 int fiov_adjust (struct fuse_iov*,int ) ;

void
fiov_refresh(struct fuse_iov *fiov)
{
 fiov_adjust(fiov, 0);
}
