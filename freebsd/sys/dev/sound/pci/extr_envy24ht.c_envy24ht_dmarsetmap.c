
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sc_info {int dev; scalar_t__ raddr; } ;
struct TYPE_3__ {int ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int ENVY24HT_MT_RADDR ;
 int ENVY24HT_MT_RCNT ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int envy24ht_wrmt (struct sc_info*,int ,int ,int) ;
 int printf (char*,unsigned long,unsigned long) ;

__attribute__((used)) static void
envy24ht_dmarsetmap(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct sc_info *sc = arg;

 sc->raddr = segs->ds_addr;
 envy24ht_wrmt(sc, ENVY24HT_MT_RADDR, (uint32_t)segs->ds_addr, 4);
 envy24ht_wrmt(sc, ENVY24HT_MT_RCNT, (uint32_t)(segs->ds_len / 4 - 1), 2);
}
