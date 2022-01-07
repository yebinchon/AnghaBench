
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_flags; int b_bufsize; } ;


 int B_MALLOC ;
 int KASSERT (int,char*) ;
 int atomic_add_long (int *,int) ;
 int atomic_subtract_long (int *,int) ;
 int bufmallocspace ;

__attribute__((used)) static void
bufmallocadjust(struct buf *bp, int bufsize)
{
 int diff;

 KASSERT((bp->b_flags & B_MALLOC) != 0,
     ("bufmallocadjust: non-malloc buf %p", bp));
 diff = bufsize - bp->b_bufsize;
 if (diff < 0)
  atomic_subtract_long(&bufmallocspace, -diff);
 else
  atomic_add_long(&bufmallocspace, diff);
 bp->b_bufsize = bufsize;
}
