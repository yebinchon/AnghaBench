
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sc_info {unsigned long raddr; unsigned long rmap; int dev; } ;
struct TYPE_3__ {unsigned long ds_addr; scalar_t__ ds_len; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int printf (char*,unsigned long,unsigned long) ;

__attribute__((used)) static void
envy24_dmarsetmap(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct sc_info *sc = (struct sc_info *)arg;

 sc->raddr = segs->ds_addr;
}
