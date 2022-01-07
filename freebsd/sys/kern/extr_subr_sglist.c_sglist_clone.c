
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist_seg {int dummy; } ;
struct sglist {int sg_nseg; int sg_segs; int sg_maxseg; } ;


 int bcopy (int ,int ,int) ;
 struct sglist* sglist_alloc (int ,int) ;

struct sglist *
sglist_clone(struct sglist *sg, int mflags)
{
 struct sglist *new;

 if (sg == ((void*)0))
  return (((void*)0));
 new = sglist_alloc(sg->sg_maxseg, mflags);
 if (new == ((void*)0))
  return (((void*)0));
 new->sg_nseg = sg->sg_nseg;
 bcopy(sg->sg_segs, new->sg_segs, sizeof(struct sglist_seg) *
     sg->sg_nseg);
 return (new);
}
