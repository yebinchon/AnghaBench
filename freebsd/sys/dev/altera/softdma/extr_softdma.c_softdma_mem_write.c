
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct softdma_softc {int * res; } ;


 int bus_write_4 (int ,int ,int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
softdma_mem_write(struct softdma_softc *sc, uint32_t reg, uint32_t val)
{

 bus_write_4(sc->res[0], reg, htole32(val));
}
