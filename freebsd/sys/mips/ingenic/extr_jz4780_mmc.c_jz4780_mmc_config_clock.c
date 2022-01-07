
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct jz4780_mmc_softc {int sc_dev; int sc_clk; } ;


 int JZ_MMC_READ_4 (struct jz4780_mmc_softc*,int ) ;
 int JZ_MMC_WRITE_4 (struct jz4780_mmc_softc*,int ,int) ;
 int JZ_MSC_CLKRT ;
 int clk_get_freq (int ,scalar_t__*) ;
 int device_printf (int ,char*,int) ;
 int jz4780_mmc_disable_clock (struct jz4780_mmc_softc*) ;

__attribute__((used)) static int
jz4780_mmc_config_clock(struct jz4780_mmc_softc *sc, uint32_t freq)
{
 uint64_t rate;
 uint32_t clk_freq;
 int err, div;

 err = jz4780_mmc_disable_clock(sc);
 if (err != 0)
  return (err);

 clk_get_freq(sc->sc_clk, &rate);
 clk_freq = (uint32_t)rate;

 div = 0;
 while (clk_freq > freq) {
  div++;
  clk_freq >>= 1;
 }
 if (div >= 7)
  div = 7;





 JZ_MMC_WRITE_4(sc, JZ_MSC_CLKRT, div);
 return (0);
}
