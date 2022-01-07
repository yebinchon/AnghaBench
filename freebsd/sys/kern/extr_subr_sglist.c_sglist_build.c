
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist {int dummy; } ;


 struct sglist* sglist_alloc (int,int) ;
 scalar_t__ sglist_append (struct sglist*,void*,size_t) ;
 int sglist_count (void*,size_t) ;
 int sglist_free (struct sglist*) ;

struct sglist *
sglist_build(void *buf, size_t len, int mflags)
{
 struct sglist *sg;
 int nsegs;

 if (len == 0)
  return (((void*)0));

 nsegs = sglist_count(buf, len);
 sg = sglist_alloc(nsegs, mflags);
 if (sg == ((void*)0))
  return (((void*)0));
 if (sglist_append(sg, buf, len) != 0) {
  sglist_free(sg);
  return (((void*)0));
 }
 return (sg);
}
