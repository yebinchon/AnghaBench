
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_mmc_softc {int dummy; } ;


 int ETIMEDOUT ;
 int JZ_CLK_EN ;
 int JZ_CLOCK_STOP ;
 int JZ_MMC_READ_4 (struct jz4780_mmc_softc*,int ) ;
 int JZ_MMC_WRITE_4 (struct jz4780_mmc_softc*,int ,int ) ;
 int JZ_MSC_CTRL ;
 int JZ_MSC_STAT ;

__attribute__((used)) static int
jz4780_mmc_disable_clock(struct jz4780_mmc_softc *sc)
{
 int timeout;

 JZ_MMC_WRITE_4(sc, JZ_MSC_CTRL, JZ_CLOCK_STOP);

 for (timeout = 1000; timeout > 0; timeout--)
  if ((JZ_MMC_READ_4(sc, JZ_MSC_STAT) & JZ_CLK_EN) == 0)
   return (0);
 return (ETIMEDOUT);
}
