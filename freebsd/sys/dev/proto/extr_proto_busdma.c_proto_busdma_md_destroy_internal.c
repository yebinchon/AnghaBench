
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_md {int bd_tag; int bd_map; int * virtaddr; scalar_t__ physaddr; } ;
struct proto_busdma {int dummy; } ;


 int LIST_REMOVE (struct proto_md*,int ) ;
 int M_PROTO_BUSDMA ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int free (struct proto_md*,int ) ;
 int mds ;
 int peers ;

__attribute__((used)) static int
proto_busdma_md_destroy_internal(struct proto_busdma *busdma,
    struct proto_md *md)
{

 LIST_REMOVE(md, mds);
 LIST_REMOVE(md, peers);
 if (md->physaddr)
  bus_dmamap_unload(md->bd_tag, md->bd_map);
 if (md->virtaddr != ((void*)0))
  bus_dmamem_free(md->bd_tag, md->virtaddr, md->bd_map);
 else
  bus_dmamap_destroy(md->bd_tag, md->bd_map);
 bus_dma_tag_destroy(md->bd_tag);
 free(md, M_PROTO_BUSDMA);
 return (0);
}
