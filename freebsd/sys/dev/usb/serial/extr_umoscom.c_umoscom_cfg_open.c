
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umoscom_softc {int dummy; } ;
struct ucom_softc {struct umoscom_softc* sc_parent; } ;


 int DPRINTF (char*) ;
 int UMOSCOM_FIFO ;
 int UMOSCOM_FIFO_DMA_BLK ;
 int UMOSCOM_FIFO_EN ;
 int UMOSCOM_FIFO_RXCLR ;
 int UMOSCOM_FIFO_RXLVL_MASK ;
 int UMOSCOM_FIFO_TXCLR ;
 int UMOSCOM_INT ;
 int UMOSCOM_UART_REG ;
 int umoscom_cfg_write (struct umoscom_softc*,int,int) ;

__attribute__((used)) static void
umoscom_cfg_open(struct ucom_softc *ucom)
{
 struct umoscom_softc *sc = ucom->sc_parent;

 DPRINTF("\n");


 umoscom_cfg_write(sc, UMOSCOM_FIFO, 0x00 | UMOSCOM_UART_REG);


 umoscom_cfg_write(sc, UMOSCOM_FIFO, UMOSCOM_FIFO_EN |
     UMOSCOM_FIFO_RXCLR | UMOSCOM_FIFO_TXCLR |
     UMOSCOM_FIFO_DMA_BLK | UMOSCOM_FIFO_RXLVL_MASK |
     UMOSCOM_UART_REG);


 umoscom_cfg_write(sc, UMOSCOM_INT, 0x0C | UMOSCOM_UART_REG);


 umoscom_cfg_write(sc, 0x01, 0x08);


 umoscom_cfg_write(sc, 0x00, 0x02);
}
