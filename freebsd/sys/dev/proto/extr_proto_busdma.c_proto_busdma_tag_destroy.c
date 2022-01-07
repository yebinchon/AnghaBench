
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_tag {int * parent; int children; int mds; } ;
struct proto_busdma {int dummy; } ;


 int EBUSY ;
 int LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct proto_tag*,int ) ;
 int M_PROTO_BUSDMA ;
 int free (struct proto_tag*,int ) ;
 int peers ;
 int tags ;

__attribute__((used)) static int
proto_busdma_tag_destroy(struct proto_busdma *busdma, struct proto_tag *tag)
{

 if (!LIST_EMPTY(&tag->mds))
  return (EBUSY);
 if (!LIST_EMPTY(&tag->children))
  return (EBUSY);

 if (tag->parent != ((void*)0)) {
  LIST_REMOVE(tag, peers);
  tag->parent = ((void*)0);
 }
 LIST_REMOVE(tag, tags);
 free(tag, M_PROTO_BUSDMA);
 return (0);
}
