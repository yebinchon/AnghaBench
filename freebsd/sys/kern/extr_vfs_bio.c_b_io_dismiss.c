
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_flags; int b_dep; int b_xflags; } ;


 int BX_ALTDATA ;
 int B_DIRECT ;
 int B_NOREUSE ;
 int B_RELBUF ;
 int IO_DIRECT ;
 int IO_EXT ;
 int IO_NOREUSE ;
 int IO_VMIO ;
 int KASSERT (int,char*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int bqrelse (struct buf*) ;
 int brelse (struct buf*) ;

__attribute__((used)) static void
b_io_dismiss(struct buf *bp, int ioflag, bool release)
{

 KASSERT((ioflag & IO_NOREUSE) == 0 || (ioflag & IO_VMIO) != 0,
     ("buf %p non-VMIO noreuse", bp));

 if ((ioflag & IO_DIRECT) != 0)
  bp->b_flags |= B_DIRECT;
 if ((ioflag & IO_EXT) != 0)
  bp->b_xflags |= BX_ALTDATA;
 if ((ioflag & (IO_VMIO | IO_DIRECT)) != 0 && LIST_EMPTY(&bp->b_dep)) {
  bp->b_flags |= B_RELBUF;
  if ((ioflag & IO_NOREUSE) != 0)
   bp->b_flags |= B_NOREUSE;
  if (release)
   brelse(bp);
 } else if (release)
  bqrelse(bp);
}
