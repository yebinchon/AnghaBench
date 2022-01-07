
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sglist_seg {int dummy; } ;
struct sglist {int sg_refs; int sg_nseg; int sg_maxseg; TYPE_1__* sg_segs; } ;
struct TYPE_3__ {size_t ss_len; scalar_t__ ss_paddr; } ;


 int EDOOFUS ;
 int EFBIG ;
 int EINVAL ;
 int ENOMEM ;
 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 struct sglist* sglist_alloc (int,int) ;

int
sglist_split(struct sglist *original, struct sglist **head, size_t length,
    int mflags)
{
 struct sglist *sg;
 size_t space, split;
 int count, i;

 if (original->sg_refs > 1)
  return (EDOOFUS);


 count = 0;
 space = 0;
 split = 0;
 for (i = 0; i < original->sg_nseg; i++) {
  space += original->sg_segs[i].ss_len;
  count++;
  if (space >= length) {






   split = space - length;
   break;
  }
 }


 if (count == 0)
  return (0);

 if (*head == ((void*)0)) {
  sg = sglist_alloc(count, mflags);
  if (sg == ((void*)0))
   return (ENOMEM);
  *head = sg;
 } else {
  sg = *head;
  if (sg->sg_maxseg < count)
   return (EFBIG);
  if (sg->sg_nseg != 0)
   return (EINVAL);
 }


 bcopy(original->sg_segs, sg->sg_segs, count *
     sizeof(struct sglist_seg));
 sg->sg_nseg = count;







 if (split != 0) {
  count--;
  sg->sg_segs[count].ss_len -= split;
  original->sg_segs[count].ss_paddr =
      sg->sg_segs[count].ss_paddr + split;
  original->sg_segs[count].ss_len = split;
 }


 original->sg_nseg -= count;
 bcopy(original->sg_segs + count, original->sg_segs, count *
     sizeof(struct sglist_seg));
 return (0);
}
