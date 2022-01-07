
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct softdma_softc {int dummy; } ;


 int A_ONCHIP_FIFO_MEM_CORE_STATUS_REG_FILL_LEVEL ;
 int softdma_memc_read (struct softdma_softc*,int ) ;

__attribute__((used)) static uint32_t
softdma_fill_level(struct softdma_softc *sc)
{
 uint32_t val;

 val = softdma_memc_read(sc,
     A_ONCHIP_FIFO_MEM_CORE_STATUS_REG_FILL_LEVEL);

 return (val);
}
