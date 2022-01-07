
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_bufobj; } ;
struct buf {int b_flags; int b_bufsize; scalar_t__ b_blkno; scalar_t__ b_lblkno; } ;
typedef scalar_t__ daddr_t ;


 scalar_t__ BUF_LOCK (struct buf*,int,int *) ;
 int BUF_UNLOCK (struct buf*) ;
 int B_CLUSTEROK ;
 int B_DELWRI ;
 int B_INVAL ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 struct buf* gbincore (int *,scalar_t__) ;

__attribute__((used)) static int
vfs_bio_clcheck(struct vnode *vp, int size, daddr_t lblkno, daddr_t blkno)
{
 struct buf *bpa;
 int match;

 match = 0;


 if ((bpa = gbincore(&vp->v_bufobj, lblkno)) == ((void*)0))
  return (0);


 if (BUF_LOCK(bpa, LK_EXCLUSIVE | LK_NOWAIT, ((void*)0)) != 0)
  return (0);


 if ((bpa->b_flags & (B_DELWRI | B_CLUSTEROK | B_INVAL)) !=
     (B_DELWRI | B_CLUSTEROK))
  goto done;

 if (bpa->b_bufsize != size)
  goto done;





 if ((bpa->b_blkno != bpa->b_lblkno) && (bpa->b_blkno == blkno))
  match = 1;
done:
 BUF_UNLOCK(bpa);
 return (match);
}
