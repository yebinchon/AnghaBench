
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sglist_seg {int dummy; } ;
struct sglist {int sg_nseg; int sg_maxseg; TYPE_1__* sg_segs; } ;
struct TYPE_3__ {size_t ss_len; scalar_t__ ss_paddr; } ;


 int CTR1 (int ,char*,size_t) ;
 int CTR2 (int ,char*,int,size_t) ;
 int EFBIG ;
 int EINVAL ;
 int ENOMEM ;
 int KTR_DEV ;
 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 struct sglist* sglist_alloc (int,int) ;

int
sglist_slice(struct sglist *original, struct sglist **slice, size_t offset,
    size_t length, int mflags)
{
 struct sglist *sg;
 size_t space, end, foffs, loffs;
 int count, i, fseg;


 if (length == 0)
  return (0);


 end = offset + length;
 space = 0;
 count = 0;
 fseg = 0;
 foffs = loffs = 0;
 for (i = 0; i < original->sg_nseg; i++) {
  space += original->sg_segs[i].ss_len;
  if (space > offset) {





   if (count == 0) {
    fseg = i;
    foffs = offset - (space -
        original->sg_segs[i].ss_len);
    CTR1(KTR_DEV, "sglist_slice: foffs = %08lx",
        foffs);
   }
   count++;






   if (space >= end) {
    loffs = space - end;
    CTR1(KTR_DEV, "sglist_slice: loffs = %08lx",
        loffs);
    break;
   }
  }
 }


 if (space < end)
  return (EINVAL);

 if (*slice == ((void*)0)) {
  sg = sglist_alloc(count, mflags);
  if (sg == ((void*)0))
   return (ENOMEM);
  *slice = sg;
 } else {
  sg = *slice;
  if (sg->sg_maxseg < count)
   return (EFBIG);
  if (sg->sg_nseg != 0)
   return (EINVAL);
 }





 bcopy(original->sg_segs + fseg, sg->sg_segs,
     count * sizeof(struct sglist_seg));
 sg->sg_nseg = count;


 if (foffs != 0) {
  sg->sg_segs[0].ss_paddr += foffs;
  sg->sg_segs[0].ss_len -= foffs;
  CTR2(KTR_DEV, "sglist_slice seg[0]: %08lx:%08lx",
      (long)sg->sg_segs[0].ss_paddr, sg->sg_segs[0].ss_len);
 }
 if (loffs != 0) {
  sg->sg_segs[count - 1].ss_len -= loffs;
  CTR2(KTR_DEV, "sglist_slice seg[%d]: len %08x", count - 1,
      sg->sg_segs[count - 1].ss_len);
 }
 return (0);
}
