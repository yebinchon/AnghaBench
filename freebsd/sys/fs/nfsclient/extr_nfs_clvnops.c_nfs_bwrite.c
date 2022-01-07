
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int curthread ;
 int ncl_writebp (struct buf*,int,int ) ;

__attribute__((used)) static int
nfs_bwrite(struct buf *bp)
{

 return (ncl_writebp(bp, 1, curthread));
}
