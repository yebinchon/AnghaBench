
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int b_io_dismiss (struct buf*,int,int) ;

void
vfs_bio_set_flags(struct buf *bp, int ioflag)
{

 b_io_dismiss(bp, ioflag, 0);
}
