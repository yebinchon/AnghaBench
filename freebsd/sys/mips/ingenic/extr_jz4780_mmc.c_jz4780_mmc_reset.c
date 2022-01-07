
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_mmc_softc {int sc_intr_mask; int sc_dev; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int JZ_CLK_EN ;
 int JZ_CLOCK_STOP ;
 int JZ_IS_RESETTING ;
 int JZ_MMC_READ_4 (struct jz4780_mmc_softc*,int ) ;
 int JZ_MMC_WRITE_4 (struct jz4780_mmc_softc*,int ,int) ;
 int JZ_MSC_CTRL ;
 int JZ_MSC_IFLG ;
 int JZ_MSC_IMASK ;
 int JZ_MSC_INT_ERR_BITS ;
 int JZ_MSC_RDTO ;
 int JZ_MSC_RESTO ;
 int JZ_MSC_STAT ;
 int JZ_RESET ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
jz4780_mmc_reset(struct jz4780_mmc_softc *sc)
{
 int timeout;


 JZ_MMC_WRITE_4(sc, JZ_MSC_CTRL, JZ_CLOCK_STOP);

 timeout = 1000;
 while (--timeout > 0) {
  if ((JZ_MMC_READ_4(sc, JZ_MSC_STAT) & JZ_CLK_EN) == 0)
   break;
  DELAY(100);
 }
 if (timeout == 0) {
  device_printf(sc->sc_dev, "Failed to stop clk.\n");
  return (ETIMEDOUT);
 }


 JZ_MMC_WRITE_4(sc, JZ_MSC_CTRL, JZ_RESET);

 timeout = 10;
 while (--timeout > 0) {
  if ((JZ_MMC_READ_4(sc, JZ_MSC_STAT) & JZ_IS_RESETTING) == 0)
   break;
  DELAY(1000);
 }

 if (timeout == 0) {




 }


 JZ_MMC_WRITE_4(sc, JZ_MSC_RESTO, 0xffff);
 JZ_MMC_WRITE_4(sc, JZ_MSC_RDTO, 0xffffffff);


 JZ_MMC_WRITE_4(sc, JZ_MSC_IMASK, 0xffffffff);

 JZ_MMC_WRITE_4(sc, JZ_MSC_IFLG, 0xffffffff);


 sc->sc_intr_mask = JZ_MSC_INT_ERR_BITS;

 return (0);
}
