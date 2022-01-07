
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ b_xflags; int b_wcred; int b_rcred; int b_dep; int b_kvasize; int * b_kvabase; } ;


 int BUF_LOCKINIT (struct buf*) ;
 int ENOMEM ;
 int LIST_INIT (int *) ;
 int MAXPHYS ;
 int NOCRED ;
 scalar_t__ kva_alloc (int ) ;

__attribute__((used)) static int
pbuf_init(void *mem, int size, int flags)
{
 struct buf *bp = mem;

 bp->b_kvabase = (void *)kva_alloc(MAXPHYS);
 if (bp->b_kvabase == ((void*)0))
  return (ENOMEM);
 bp->b_kvasize = MAXPHYS;
 BUF_LOCKINIT(bp);
 LIST_INIT(&bp->b_dep);
 bp->b_rcred = bp->b_wcred = NOCRED;
 bp->b_xflags = 0;

 return (0);
}
