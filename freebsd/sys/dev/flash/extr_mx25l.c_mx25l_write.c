
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint32_t ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; int* tx_cmd; int* rx_cmd; void* rx_data_sz; void* tx_data_sz; int rx_data; int tx_data; } ;
struct mx25l_softc {int sc_flags; int sc_erasesize; int sc_dev; int sc_parent; int sc_dummybuf; } ;
typedef int off_t ;
typedef int caddr_t ;


 int CMD_PAGE_PROGRAM ;
 int EIO ;
 int FLASH_PAGE_SIZE ;
 int FL_ENABLE_4B_ADDR ;
 int MIN (int ,int) ;
 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 int mx25l_erase_cmd (struct mx25l_softc*,int) ;
 int mx25l_set_writable (struct mx25l_softc*,int) ;
 int mx25l_wait_for_device_ready (struct mx25l_softc*) ;

__attribute__((used)) static int
mx25l_write(struct mx25l_softc *sc, off_t offset, caddr_t data, off_t count)
{
 uint8_t txBuf[8], rxBuf[8];
 struct spi_command cmd;
 off_t bytes_to_write;
 int err = 0;

 if (sc->sc_flags & FL_ENABLE_4B_ADDR) {
  cmd.tx_cmd_sz = 5;
  cmd.rx_cmd_sz = 5;
 } else {
  cmd.tx_cmd_sz = 4;
  cmd.rx_cmd_sz = 4;
 }





 if (count % sc->sc_erasesize != 0 || offset % sc->sc_erasesize != 0)
  return (EIO);





 while (count != 0) {

  if (((offset) % sc->sc_erasesize) == 0) {
   err = mx25l_erase_cmd(sc, offset);
   if (err)
    break;
  }

  txBuf[0] = CMD_PAGE_PROGRAM;
  if (sc->sc_flags & FL_ENABLE_4B_ADDR) {
   txBuf[1] = (offset >> 24) & 0xff;
   txBuf[2] = (offset >> 16) & 0xff;
   txBuf[3] = (offset >> 8) & 0xff;
   txBuf[4] = offset & 0xff;
  } else {
   txBuf[1] = (offset >> 16) & 0xff;
   txBuf[2] = (offset >> 8) & 0xff;
   txBuf[3] = offset & 0xff;
  }

  bytes_to_write = MIN(FLASH_PAGE_SIZE, count);
  cmd.tx_cmd = txBuf;
  cmd.rx_cmd = rxBuf;
  cmd.tx_data = data;
  cmd.rx_data = sc->sc_dummybuf;
  cmd.tx_data_sz = (uint32_t)bytes_to_write;
  cmd.rx_data_sz = (uint32_t)bytes_to_write;





  if ((err = mx25l_wait_for_device_ready(sc)) != 0)
   break;
  if ((err = mx25l_set_writable(sc, 1)) != 0)
   break;

  err = SPIBUS_TRANSFER(sc->sc_parent, sc->sc_dev, &cmd);
  if (err != 0)
   break;
  err = mx25l_wait_for_device_ready(sc);
  if (err)
   break;

  data += bytes_to_write;
  offset += bytes_to_write;
  count -= bytes_to_write;
 }

 return (err);
}
