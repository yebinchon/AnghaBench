
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct buf {int b_bufsize; int b_flags; int * b_data; int * b_kvabase; } ;
typedef int * caddr_t ;


 int B_MALLOC ;
 int M_BIOBUF ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int bcopy (int *,int *,int) ;
 int bufmallocadjust (struct buf*,int) ;
 scalar_t__ bufmallocspace ;
 int bufspace_adjust (struct buf*,int) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 scalar_t__ maxbufmallocspace ;
 int round_page (int) ;
 int vm_hold_load_pages (struct buf*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
vfs_nonvmio_extend(struct buf *bp, int newbsize)
{
 caddr_t origbuf;
 int origbufsize;
 if (bp->b_bufsize == 0 && newbsize <= PAGE_SIZE/2 &&
     bufmallocspace < maxbufmallocspace) {
  bp->b_data = malloc(newbsize, M_BIOBUF, M_WAITOK);
  bp->b_flags |= B_MALLOC;
  bufmallocadjust(bp, newbsize);
  return;
 }






 origbuf = ((void*)0);
 origbufsize = 0;
 if (bp->b_flags & B_MALLOC) {
  origbuf = bp->b_data;
  origbufsize = bp->b_bufsize;
  bp->b_data = bp->b_kvabase;
  bufmallocadjust(bp, 0);
  bp->b_flags &= ~B_MALLOC;
  newbsize = round_page(newbsize);
 }
 vm_hold_load_pages(bp, (vm_offset_t) bp->b_data + bp->b_bufsize,
     (vm_offset_t) bp->b_data + newbsize);
 if (origbuf != ((void*)0)) {
  bcopy(origbuf, bp->b_data, origbufsize);
  free(origbuf, M_BIOBUF);
 }
 bufspace_adjust(bp, newbsize);
}
