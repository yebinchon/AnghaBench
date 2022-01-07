
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct softdma_softc {int * res; } ;


 int bus_read_4 (int ,int ) ;
 int le32toh (int ) ;

__attribute__((used)) static uint32_t
softdma_memc_read(struct softdma_softc *sc, uint32_t reg)
{
 uint32_t val;

 val = bus_read_4(sc->res[1], reg);

 return (le32toh(val));
}
