
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct proto_md {int bd_map; int bd_tag; int physaddr; } ;
struct TYPE_3__ {int op; } ;
struct TYPE_4__ {TYPE_1__ sync; } ;
struct proto_ioc_busdma {TYPE_2__ u; } ;
struct proto_busdma {int dummy; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int EINVAL ;
 int ENXIO ;
 int bus_dmamap_sync (int ,int ,int) ;

__attribute__((used)) static int
proto_busdma_sync(struct proto_busdma *busdma, struct proto_md *md,
    struct proto_ioc_busdma *ioc)
{
 u_int ops;

 ops = BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE |
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE;
 if (ioc->u.sync.op & ~ops)
  return (EINVAL);
 if (!md->physaddr)
  return (ENXIO);
 bus_dmamap_sync(md->bd_tag, md->bd_map, ioc->u.sync.op);
 return (0);
}
