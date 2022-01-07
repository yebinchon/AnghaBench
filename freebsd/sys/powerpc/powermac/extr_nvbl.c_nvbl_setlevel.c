
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvbl_softc {int sc_memr; } ;


 int NVIDIA_BRIGHT_MIN ;
 int NVIDIA_BRIGHT_SCALE ;
 int NVIDIA_PMC_BL_EN ;
 int NVIDIA_PMC_BL_SHIFT ;
 int NVIDIA_PMC_OFF ;
 int bus_read_stream_4 (int ,int ) ;
 int bus_write_stream_4 (int ,int ,int) ;

__attribute__((used)) static int
nvbl_setlevel(struct nvbl_softc *sc, int newlevel)
{
 uint32_t pmc_reg;

 if (newlevel > 100)
  newlevel = 100;

 if (newlevel < 0)
  newlevel = 0;

 if (newlevel > 0)
  newlevel = (newlevel * NVIDIA_BRIGHT_SCALE) + NVIDIA_BRIGHT_MIN;

 pmc_reg = bus_read_stream_4(sc->sc_memr, NVIDIA_PMC_OFF) & 0xffff;
 pmc_reg |= NVIDIA_PMC_BL_EN | (newlevel << NVIDIA_PMC_BL_SHIFT);
 bus_write_stream_4(sc->sc_memr, NVIDIA_PMC_OFF, pmc_reg);

 return (0);
}
