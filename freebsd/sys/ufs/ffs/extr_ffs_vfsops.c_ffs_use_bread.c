
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct buf {int b_flags; int b_data; } ;
typedef int off_t ;


 int B_INVAL ;
 int B_NOCACHE ;
 int KASSERT (int ,char*) ;
 int M_UFSMNT ;
 int M_WAITOK ;
 int NOCRED ;
 int bcopy (int ,void*,int) ;
 int bread (struct vnode*,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int btodb (int ) ;
 void* malloc (int,int ,int ) ;

__attribute__((used)) static int
ffs_use_bread(void *devfd, off_t loc, void **bufp, int size)
{
 struct buf *bp;
 int error;

 KASSERT(*bufp == ((void*)0), ("ffs_use_bread: non-NULL *bufp %p\n", *bufp));
 *bufp = malloc(size, M_UFSMNT, M_WAITOK);
 if ((error = bread((struct vnode *)devfd, btodb(loc), size, NOCRED,
     &bp)) != 0)
  return (error);
 bcopy(bp->b_data, *bufp, size);
 bp->b_flags |= B_INVAL | B_NOCACHE;
 brelse(bp);
 return (0);
}
