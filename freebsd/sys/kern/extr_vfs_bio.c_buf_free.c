
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buf {int b_flags; int b_vflags; scalar_t__ b_rcred; scalar_t__ b_wcred; int b_dep; } ;
struct TYPE_2__ {int bd_freebuffers; } ;


 int BUF_UNLOCK (struct buf*) ;
 int BV_BKGRDINPROG ;
 int B_REMFREE ;
 int LIST_EMPTY (int *) ;
 scalar_t__ NOCRED ;
 int atomic_add_int (int *,int) ;
 int bremfreef (struct buf*) ;
 int buf_deallocate (struct buf*) ;
 int buf_zone ;
 TYPE_1__* bufdomain (struct buf*) ;
 int bufkva_free (struct buf*) ;
 int crfree (scalar_t__) ;
 int panic (char*) ;
 int uma_zfree (int ,struct buf*) ;

__attribute__((used)) static void
buf_free(struct buf *bp)
{

 if (bp->b_flags & B_REMFREE)
  bremfreef(bp);
 if (bp->b_vflags & BV_BKGRDINPROG)
  panic("losing buffer 1");
 if (bp->b_rcred != NOCRED) {
  crfree(bp->b_rcred);
  bp->b_rcred = NOCRED;
 }
 if (bp->b_wcred != NOCRED) {
  crfree(bp->b_wcred);
  bp->b_wcred = NOCRED;
 }
 if (!LIST_EMPTY(&bp->b_dep))
  buf_deallocate(bp);
 bufkva_free(bp);
 atomic_add_int(&bufdomain(bp)->bd_freebuffers, 1);
 BUF_UNLOCK(bp);
 uma_zfree(buf_zone, bp);
}
