
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {long bd_bufspacethresh; int bd_bufspace; } ;
struct buf {int b_flags; int b_bufsize; } ;


 int B_MALLOC ;
 int KASSERT (int,char*) ;
 long atomic_fetchadd_long (int *,int) ;
 int atomic_subtract_long (int *,int) ;
 struct bufdomain* bufdomain (struct buf*) ;
 int bufspace_daemon_wakeup (struct bufdomain*) ;

__attribute__((used)) static void
bufspace_adjust(struct buf *bp, int bufsize)
{
 struct bufdomain *bd;
 long space;
 int diff;

 KASSERT((bp->b_flags & B_MALLOC) == 0,
     ("bufspace_adjust: malloc buf %p", bp));
 bd = bufdomain(bp);
 diff = bufsize - bp->b_bufsize;
 if (diff < 0) {
  atomic_subtract_long(&bd->bd_bufspace, -diff);
 } else if (diff > 0) {
  space = atomic_fetchadd_long(&bd->bd_bufspace, diff);

  if (space < bd->bd_bufspacethresh &&
      space + diff >= bd->bd_bufspacethresh)
   bufspace_daemon_wakeup(bd);
 }
 bp->b_bufsize = bufsize;
}
