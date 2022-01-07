
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_md {scalar_t__ physaddr; int bd_map; int bd_tag; } ;
struct proto_busdma {int dummy; } ;


 int ENXIO ;
 int bus_dmamap_unload (int ,int ) ;

__attribute__((used)) static int
proto_busdma_md_unload(struct proto_busdma *busdma, struct proto_md *md)
{

 if (!md->physaddr)
  return (ENXIO);
 bus_dmamap_unload(md->bd_tag, md->bd_map);
 md->physaddr = 0;
 return (0);
}
