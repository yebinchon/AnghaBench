
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_flags; int b_kvabase; int b_data; } ;


 int B_MALLOC ;
 int M_BIOBUF ;
 int bufmallocadjust (struct buf*,int ) ;
 int bufspace_adjust (struct buf*,int) ;
 int free (int ,int ) ;
 int vm_hold_free_pages (struct buf*,int) ;

__attribute__((used)) static void
vfs_nonvmio_truncate(struct buf *bp, int newbsize)
{

 if (bp->b_flags & B_MALLOC) {



  if (newbsize == 0) {
   bufmallocadjust(bp, 0);
   free(bp->b_data, M_BIOBUF);
   bp->b_data = bp->b_kvabase;
   bp->b_flags &= ~B_MALLOC;
  }
  return;
 }
 vm_hold_free_pages(bp, newbsize);
 bufspace_adjust(bp, newbsize);
}
