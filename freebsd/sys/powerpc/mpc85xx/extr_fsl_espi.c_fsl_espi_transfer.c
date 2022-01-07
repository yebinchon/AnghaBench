
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
struct fsl_espi_softc {int sc_num_cs; int sc_flags; scalar_t__ sc_len; int sc_dev; int sc_mtx; scalar_t__ sc_written; scalar_t__ sc_read; struct spi_command* sc_cmd; } ;
typedef int device_t ;


 int EINVAL ;
 int EIO ;
 int ESPI_CSMODE (int) ;
 int ESPI_CSMODE_CI ;
 int ESPI_CSMODE_CP ;
 int ESPI_CSMODE_CSCG (int) ;
 int ESPI_CSMODE_DIV16 ;
 int ESPI_CSMODE_LEN (int) ;
 int ESPI_CSMODE_PM_S ;
 int ESPI_CSMODE_POL ;
 int ESPI_CSMODE_REV ;
 int ESPI_SPCOM ;
 int ESPI_SPCOM_CS_S ;
 scalar_t__ ESPI_SPCOM_TRANLEN_M ;
 int ESPI_SPIE_DON ;
 int ESPI_SPIE_RXF ;
 int ESPI_SPIE_TXE ;
 int ESPI_SPIM ;
 int EWOULDBLOCK ;
 int FSL_ESPI_BUSY ;
 int FSL_ESPI_LOCK (struct fsl_espi_softc*) ;
 int FSL_ESPI_UNLOCK (struct fsl_espi_softc*) ;
 int FSL_ESPI_WRITE (struct fsl_espi_softc*,int ,int) ;
 int KASSERT (int,char*) ;
 int SPIBUS_CS_HIGH ;
 int SPIBUS_MODE_CPHA ;
 int SPIBUS_MODE_CPOL ;
 int SPIBUS_MODE_CPOL_CPHA ;
 int device_get_nameunit (int ) ;
 struct fsl_espi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int howmany (int,int) ;
 int hz ;
 int max (int,int) ;
 int mpc85xx_get_system_clock () ;
 int mtx_sleep (int ,int *,int ,char*,int) ;
 int spibus_get_clock (int ,int*) ;
 int spibus_get_cs (int ,int*) ;
 int spibus_get_mode (int ,int*) ;
 int wakeup_one (int ) ;

__attribute__((used)) static int
fsl_espi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct fsl_espi_softc *sc;
 u_long plat_clk;
 uint32_t csmode, spi_clk, spi_mode;
 int cs, err, pm;

 sc = device_get_softc(dev);

 KASSERT(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
     ("TX/RX command sizes should be equal"));
 KASSERT(cmd->tx_data_sz == cmd->rx_data_sz,
     ("TX/RX data sizes should be equal"));


 if (cmd->tx_cmd_sz + cmd->tx_data_sz > ESPI_SPCOM_TRANLEN_M + 1) {
  return (EINVAL);
 }


 spibus_get_cs(child, &cs);
 if (cs < 0 || cs > sc->sc_num_cs) {
  device_printf(dev,
      "Invalid chip select %d requested by %s\n", cs,
      device_get_nameunit(child));
  return (EINVAL);
 }
 spibus_get_clock(child, &spi_clk);
 spibus_get_mode(child, &spi_mode);

 FSL_ESPI_LOCK(sc);


 while (sc->sc_flags & FSL_ESPI_BUSY)
  mtx_sleep(dev, &sc->sc_mtx, 0, "fsl_espi", 0);


 sc->sc_flags = FSL_ESPI_BUSY;


 sc->sc_cmd = cmd;
 sc->sc_read = 0;
 sc->sc_written = 0;
 sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;

 plat_clk = mpc85xx_get_system_clock();
 spi_clk = max(spi_clk, plat_clk / (16 * 16));
 if (plat_clk == 0) {
  device_printf(dev,
      "unable to get platform clock, giving up.\n");
  return (EINVAL);
 }
 csmode = 0;
 if (plat_clk > spi_clk * 16 * 2) {
  csmode |= ESPI_CSMODE_DIV16;
  plat_clk /= 16;
 }
 pm = howmany(plat_clk, spi_clk * 2) - 1;
 if (pm < 0)
  pm = 1;
 if (pm > 15)
  pm = 15;

 csmode |= (pm << ESPI_CSMODE_PM_S);
 csmode |= ESPI_CSMODE_REV;
 if (spi_mode == SPIBUS_MODE_CPOL || spi_mode == SPIBUS_MODE_CPOL_CPHA)
  csmode |= ESPI_CSMODE_CI;
 if (spi_mode == SPIBUS_MODE_CPHA || spi_mode == SPIBUS_MODE_CPOL_CPHA)
  csmode |= ESPI_CSMODE_CP;
 if (!(cs & SPIBUS_CS_HIGH))
  csmode |= ESPI_CSMODE_POL;
 csmode |= ESPI_CSMODE_LEN(7);
 csmode |= ESPI_CSMODE_CSCG(1);

 FSL_ESPI_WRITE(sc, ESPI_SPCOM, (cs << ESPI_SPCOM_CS_S) | (sc->sc_len - 1));
 FSL_ESPI_WRITE(sc, ESPI_CSMODE(cs), csmode);

 FSL_ESPI_WRITE(sc, ESPI_SPIM,
     ESPI_SPIE_TXE | ESPI_SPIE_DON | ESPI_SPIE_RXF);


 err = mtx_sleep(dev, &sc->sc_mtx, 0, "fsl_espi", hz * 2);
 FSL_ESPI_WRITE(sc, ESPI_SPIM, 0);


 sc->sc_flags = 0;
 wakeup_one(dev);
 FSL_ESPI_UNLOCK(sc);





 if (err == EWOULDBLOCK) {
  device_printf(sc->sc_dev, "SPI error\n");
  err = EIO;
 }

 return (err);
}
