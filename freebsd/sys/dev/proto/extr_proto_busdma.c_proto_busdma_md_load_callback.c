
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct proto_callback_bundle {TYPE_3__* ioc; } ;
typedef int bus_size_t ;
struct TYPE_9__ {int ds_addr; } ;
typedef TYPE_4__ bus_dma_segment_t ;
struct TYPE_6__ {int bus_nsegs; int bus_addr; } ;
struct TYPE_7__ {TYPE_1__ md; } ;
struct TYPE_8__ {TYPE_2__ u; } ;



__attribute__((used)) static void
proto_busdma_md_load_callback(void *arg, bus_dma_segment_t *segs, int nseg,
    bus_size_t sz, int error)
{
 struct proto_callback_bundle *pcb = arg;

 pcb->ioc->u.md.bus_nsegs = nseg;
 pcb->ioc->u.md.bus_addr = segs[0].ds_addr;
}
