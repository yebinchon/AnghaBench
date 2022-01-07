
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmat; } ;
struct emu_sc_info {TYPE_1__ mem; } ;
typedef int bus_dma_tag_t ;



bus_dma_tag_t
emu_gettag(struct emu_sc_info *sc)
{
 return (sc->mem.dmat);
}
