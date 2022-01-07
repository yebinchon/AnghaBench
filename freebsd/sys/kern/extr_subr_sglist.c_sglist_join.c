
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist_seg {scalar_t__ ss_paddr; scalar_t__ ss_len; } ;
struct sglist {int sg_nseg; int sg_maxseg; struct sglist_seg* sg_segs; } ;


 int EFBIG ;
 int bcopy (struct sglist_seg*,struct sglist_seg*,int) ;
 int sglist_reset (struct sglist*) ;

int
sglist_join(struct sglist *first, struct sglist *second)
{
 struct sglist_seg *flast, *sfirst;
 int append;


 if (second->sg_nseg == 0)
  return (0);





 append = 0;
 flast = &first->sg_segs[first->sg_nseg - 1];
 sfirst = &second->sg_segs[0];
 if (first->sg_nseg != 0 &&
     flast->ss_paddr + flast->ss_len == sfirst->ss_paddr)
  append = 1;


 if (first->sg_nseg + second->sg_nseg - append > first->sg_maxseg)
  return (EFBIG);


 if (append)
  flast->ss_len += sfirst->ss_len;


 bcopy(first->sg_segs + first->sg_nseg, second->sg_segs + append,
     (second->sg_nseg - append) * sizeof(struct sglist_seg));
 first->sg_nseg += second->sg_nseg - append;
 sglist_reset(second);
 return (0);
}
