
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct buf {int dummy; } ;
typedef int daddr_t ;


 int getblkx (struct vnode*,int ,int,int,int,int,struct buf**) ;

struct buf *
getblk(struct vnode *vp, daddr_t blkno, int size, int slpflag, int slptimeo,
    int flags)
{
 struct buf *bp;
 int error;

 error = getblkx(vp, blkno, size, slpflag, slptimeo, flags, &bp);
 if (error != 0)
  return (((void*)0));
 return (bp);
}
