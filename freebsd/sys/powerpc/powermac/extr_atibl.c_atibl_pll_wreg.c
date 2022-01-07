
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atibl_softc {int sc_memr; } ;


 int DELAY (int) ;
 int RADEON_CLOCK_CNTL_DATA ;
 int RADEON_CLOCK_CNTL_INDEX ;
 int RADEON_CRTC_GEN_CNTL ;
 int RADEON_PLL_WR_EN ;
 int bus_read_4 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void __inline
atibl_pll_wreg(struct atibl_softc *sc, uint32_t reg, uint32_t val)
{
 uint32_t save, tmp;

 bus_write_1(sc->sc_memr, RADEON_CLOCK_CNTL_INDEX,
     ((reg & 0x3f) | RADEON_PLL_WR_EN));
 (void)bus_read_4(sc->sc_memr, RADEON_CLOCK_CNTL_DATA);
 (void)bus_read_4(sc->sc_memr, RADEON_CRTC_GEN_CNTL);

 bus_write_4(sc->sc_memr, RADEON_CLOCK_CNTL_DATA, val);
 DELAY(5000);


 save = bus_read_4(sc->sc_memr, RADEON_CLOCK_CNTL_INDEX);
 tmp = save & (~0x3f | RADEON_PLL_WR_EN);
 bus_write_4(sc->sc_memr, RADEON_CLOCK_CNTL_INDEX, tmp);
 tmp = bus_read_4(sc->sc_memr, RADEON_CLOCK_CNTL_DATA);
 bus_write_4(sc->sc_memr, RADEON_CLOCK_CNTL_INDEX, save);
}
