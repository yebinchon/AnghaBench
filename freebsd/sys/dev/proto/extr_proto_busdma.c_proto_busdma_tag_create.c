
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proto_tag {int bndry; int maxaddr; int maxsz; int maxsegsz; int nsegs; int datarate; int align; int children; struct proto_tag* parent; } ;
struct TYPE_3__ {int bndry; int maxsegsz; int maxsz; int nsegs; int maxaddr; int datarate; int align; } ;
struct TYPE_4__ {TYPE_1__ tag; } ;
struct proto_ioc_busdma {uintptr_t result; TYPE_2__ u; } ;
struct proto_busdma {int tags; } ;


 int BNDRY_MIN (int,int) ;
 int EINVAL ;
 int LIST_INSERT_HEAD (int *,struct proto_tag*,int ) ;
 int MAX (int ,int ) ;
 void* MIN (int,int) ;
 int M_PROTO_BUSDMA ;
 int M_WAITOK ;
 int M_ZERO ;
 struct proto_tag* malloc (int,int ,int) ;
 int peers ;
 int tags ;

__attribute__((used)) static int
proto_busdma_tag_create(struct proto_busdma *busdma, struct proto_tag *parent,
    struct proto_ioc_busdma *ioc)
{
 struct proto_tag *tag;


 if (ioc->u.tag.bndry != 0 &&
     (ioc->u.tag.bndry & (ioc->u.tag.bndry - 1)) != 0)
  return (EINVAL);






 if (ioc->u.tag.maxsegsz > ioc->u.tag.maxsz || ioc->u.tag.nsegs == 1)
  ioc->u.tag.maxsegsz = ioc->u.tag.maxsz;

 tag = malloc(sizeof(*tag), M_PROTO_BUSDMA, M_WAITOK | M_ZERO);
 if (parent != ((void*)0)) {
  tag->parent = parent;
  LIST_INSERT_HEAD(&parent->children, tag, peers);
  tag->align = MAX(ioc->u.tag.align, parent->align);
  tag->bndry = BNDRY_MIN(ioc->u.tag.bndry, parent->bndry);
  tag->maxaddr = MIN(ioc->u.tag.maxaddr, parent->maxaddr);
  tag->maxsz = MIN(ioc->u.tag.maxsz, parent->maxsz);
  tag->maxsegsz = MIN(ioc->u.tag.maxsegsz, parent->maxsegsz);
  tag->nsegs = MIN(ioc->u.tag.nsegs, parent->nsegs);
  tag->datarate = MIN(ioc->u.tag.datarate, parent->datarate);

  ioc->u.tag.align = tag->align;
  ioc->u.tag.bndry = tag->bndry;
  ioc->u.tag.maxaddr = tag->maxaddr;
  ioc->u.tag.maxsz = tag->maxsz;
  ioc->u.tag.maxsegsz = tag->maxsegsz;
  ioc->u.tag.nsegs = tag->nsegs;
  ioc->u.tag.datarate = tag->datarate;
 } else {
  tag->align = ioc->u.tag.align;
  tag->bndry = ioc->u.tag.bndry;
  tag->maxaddr = ioc->u.tag.maxaddr;
  tag->maxsz = ioc->u.tag.maxsz;
  tag->maxsegsz = ioc->u.tag.maxsegsz;
  tag->nsegs = ioc->u.tag.nsegs;
  tag->datarate = ioc->u.tag.datarate;
 }
 LIST_INSERT_HEAD(&busdma->tags, tag, tags);
 ioc->result = (uintptr_t)(void *)tag;
 return (0);
}
