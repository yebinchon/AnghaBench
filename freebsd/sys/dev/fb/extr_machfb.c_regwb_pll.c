
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct machfb_softc {int dummy; } ;


 scalar_t__ CLOCK_CNTL ;
 int PLL_WR_EN ;
 int regwb (struct machfb_softc*,scalar_t__,int) ;

__attribute__((used)) static inline void
regwb_pll(struct machfb_softc *sc, uint32_t index, uint8_t data)
{

 regwb(sc, CLOCK_CNTL + 1, (index << 2) | PLL_WR_EN);
 regwb(sc, CLOCK_CNTL + 2, data);
 regwb(sc, CLOCK_CNTL + 1, (index << 2) & ~PLL_WR_EN);
}
