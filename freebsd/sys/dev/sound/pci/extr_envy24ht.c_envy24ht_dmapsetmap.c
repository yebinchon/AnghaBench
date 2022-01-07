
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sc_info {int dev; scalar_t__ paddr; } ;
struct TYPE_3__ {int ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int ENVY24HT_MT_PADDR ;
 int ENVY24HT_MT_PCNT ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int envy24ht_wrmt (struct sc_info*,int ,int ,int) ;
 int printf (char*,unsigned long,unsigned long) ;

__attribute__((used)) static void
envy24ht_dmapsetmap(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct sc_info *sc = arg;

 sc->paddr = segs->ds_addr;
 envy24ht_wrmt(sc, ENVY24HT_MT_PADDR, (uint32_t)segs->ds_addr, 4);
 envy24ht_wrmt(sc, ENVY24HT_MT_PCNT, (uint32_t)(segs->ds_len / 4 - 1), 2);
}
