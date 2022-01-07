
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct atiixp_info {int sgd_addr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
atiixp_dma_cb(void *p, bus_dma_segment_t *bds, int a, int b)
{
 struct atiixp_info *sc = (struct atiixp_info *)p;
 sc->sgd_addr = bds->ds_addr;
}
