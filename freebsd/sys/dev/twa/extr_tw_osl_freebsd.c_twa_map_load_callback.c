
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bus_addr_t ;
typedef int TW_VOID ;
typedef int TW_INT32 ;



__attribute__((used)) static TW_VOID
twa_map_load_callback(TW_VOID *arg, bus_dma_segment_t *segs,
 TW_INT32 nsegments, TW_INT32 error)
{
 *((bus_addr_t *)arg) = segs[0].ds_addr;
}
