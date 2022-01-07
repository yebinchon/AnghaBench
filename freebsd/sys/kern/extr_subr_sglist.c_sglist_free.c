
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist {int sg_refs; } ;


 int M_SGLIST ;
 int free (struct sglist*,int ) ;
 scalar_t__ refcount_release (int *) ;

void
sglist_free(struct sglist *sg)
{

 if (sg == ((void*)0))
  return;

 if (refcount_release(&sg->sg_refs))
  free(sg, M_SGLIST);
}
