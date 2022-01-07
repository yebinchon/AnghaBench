
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist_seg {int dummy; } ;
struct sglist {int dummy; } ;


 int M_SGLIST ;
 struct sglist* malloc (int,int ,int) ;
 int sglist_init (struct sglist*,int,struct sglist_seg*) ;

struct sglist *
sglist_alloc(int nsegs, int mflags)
{
 struct sglist *sg;

 sg = malloc(sizeof(struct sglist) + nsegs * sizeof(struct sglist_seg),
     M_SGLIST, mflags);
 if (sg == ((void*)0))
  return (((void*)0));
 sglist_init(sg, nsegs, (struct sglist_seg *)(sg + 1));
 return (sg);
}
