
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_tag {int mds; int maxsegsz; int nsegs; int maxsz; int maxaddr; int bndry; int align; } ;
struct proto_md {int bd_tag; int bd_map; struct proto_tag* tag; } ;
struct proto_ioc_busdma {uintptr_t result; } ;
struct proto_busdma {int mds; int bd_roottag; } ;


 int BUS_SPACE_MAXADDR ;
 int LIST_INSERT_HEAD (int *,struct proto_md*,int ) ;
 int M_PROTO_BUSDMA ;
 int M_WAITOK ;
 int M_ZERO ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int free (struct proto_md*,int ) ;
 struct proto_md* malloc (int,int ,int) ;
 int mds ;
 int peers ;

__attribute__((used)) static int
proto_busdma_md_create(struct proto_busdma *busdma, struct proto_tag *tag,
    struct proto_ioc_busdma *ioc)
{
 struct proto_md *md;
 int error;

 md = malloc(sizeof(*md), M_PROTO_BUSDMA, M_WAITOK | M_ZERO);
 md->tag = tag;

 error = bus_dma_tag_create(busdma->bd_roottag, tag->align, tag->bndry,
     tag->maxaddr, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), tag->maxsz,
     tag->nsegs, tag->maxsegsz, 0, ((void*)0), ((void*)0), &md->bd_tag);
 if (error) {
  free(md, M_PROTO_BUSDMA);
  return (error);
 }
 error = bus_dmamap_create(md->bd_tag, 0, &md->bd_map);
 if (error) {
  bus_dma_tag_destroy(md->bd_tag);
  free(md, M_PROTO_BUSDMA);
  return (error);
 }

 LIST_INSERT_HEAD(&tag->mds, md, peers);
 LIST_INSERT_HEAD(&busdma->mds, md, mds);
 ioc->result = (uintptr_t)(void *)md;
 return (0);
}
