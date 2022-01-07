
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct umcs7840_softc {int sc_driver_done; TYPE_3__* sc_ports; } ;
struct ucom_softc {size_t sc_portno; TYPE_2__* sc_tty; struct umcs7840_softc* sc_parent; } ;
struct TYPE_8__ {int reg_control; int reg_sp; } ;
struct TYPE_7__ {int sc_lcr; int sc_mcr; } ;
struct TYPE_5__ {int c_cflag; } ;
struct TYPE_6__ {TYPE_1__ t_termios; } ;


 int CNO_RTSDTR ;
 int DPRINTF (char*,size_t) ;
 int MCS7840_DEV_CONTROL1_DRIVER_DONE ;
 int MCS7840_DEV_CONTROLx_RX_DISABLE ;
 int MCS7840_DEV_REG_CONTROL1 ;
 int MCS7840_DEV_SPx_RESET_IN_FIFO ;
 int MCS7840_DEV_SPx_RESET_OUT_FIFO ;
 int MCS7840_DEV_SPx_UART_RESET ;
 int MCS7840_UART_FCR_ENABLE ;
 int MCS7840_UART_FCR_FLUSHRHR ;
 int MCS7840_UART_FCR_FLUSHTHR ;
 int MCS7840_UART_FCR_RTL_1_14 ;
 int MCS7840_UART_IER_MODEM ;
 int MCS7840_UART_IER_RXSTAT ;
 int MCS7840_UART_LCR_DATALEN8 ;
 int MCS7840_UART_LCR_STOPB1 ;
 int MCS7840_UART_MCR_DTR ;
 int MCS7840_UART_MCR_IE ;
 int MCS7840_UART_MCR_RTS ;
 int MCS7840_UART_REG_FCR ;
 int MCS7840_UART_REG_IER ;
 int MCS7840_UART_REG_LCR ;
 int MCS7840_UART_REG_MCR ;
 int MCS7840_UART_REG_SCRATCHPAD ;
 int MCS7840_UART_SCRATCHPAD_RS232 ;
 scalar_t__ umcs7840_get_UART_reg_sync (struct umcs7840_softc*,size_t,int ,int*) ;
 scalar_t__ umcs7840_get_reg_sync (struct umcs7840_softc*,int ,int*) ;
 TYPE_4__* umcs7840_port_registers ;
 scalar_t__ umcs7840_set_UART_reg_sync (struct umcs7840_softc*,size_t,int ,int) ;
 scalar_t__ umcs7840_set_baudrate (struct umcs7840_softc*,size_t,int) ;
 scalar_t__ umcs7840_set_reg_sync (struct umcs7840_softc*,int ,int) ;

__attribute__((used)) static void
umcs7840_cfg_open(struct ucom_softc *ucom)
{
 struct umcs7840_softc *sc = ucom->sc_parent;
 uint16_t pn = ucom->sc_portno;
 uint8_t data;


 if (!sc->sc_driver_done) {




  if (umcs7840_get_reg_sync(sc, MCS7840_DEV_REG_CONTROL1, &data))
   return;
  data |= MCS7840_DEV_CONTROL1_DRIVER_DONE;
  if (umcs7840_set_reg_sync(sc, MCS7840_DEV_REG_CONTROL1, data))
   return;
  sc->sc_driver_done = 1;
 }

 if (umcs7840_get_reg_sync(sc, umcs7840_port_registers[pn].reg_sp, &data))
  return;
 data |= MCS7840_DEV_SPx_UART_RESET;
 if (umcs7840_set_reg_sync(sc, umcs7840_port_registers[pn].reg_sp, data))
  return;
 data &= ~MCS7840_DEV_SPx_UART_RESET;
 if (umcs7840_set_reg_sync(sc, umcs7840_port_registers[pn].reg_sp, data))
  return;


 if (umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_SCRATCHPAD, MCS7840_UART_SCRATCHPAD_RS232))
  return;


 if (umcs7840_get_reg_sync(sc, umcs7840_port_registers[pn].reg_control, &data))
  return;
 data |= MCS7840_DEV_CONTROLx_RX_DISABLE;
 if (umcs7840_set_reg_sync(sc, umcs7840_port_registers[pn].reg_control, data))
  return;


 if (umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_IER, 0))
  return;


 if (umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_FCR, 0))
  return;
 if (umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_FCR,
     MCS7840_UART_FCR_ENABLE | MCS7840_UART_FCR_FLUSHRHR |
     MCS7840_UART_FCR_FLUSHTHR | MCS7840_UART_FCR_RTL_1_14))
  return;


 sc->sc_ports[pn].sc_lcr = MCS7840_UART_LCR_DATALEN8 | MCS7840_UART_LCR_STOPB1;
 if (umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_LCR, sc->sc_ports[pn].sc_lcr))
  return;





 sc->sc_ports[pn].sc_mcr = MCS7840_UART_MCR_IE;
 if (ucom->sc_tty == ((void*)0) || (ucom->sc_tty->t_termios.c_cflag & CNO_RTSDTR) == 0)
  sc->sc_ports[pn].sc_mcr |= MCS7840_UART_MCR_DTR | MCS7840_UART_MCR_RTS;
 if (umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_MCR, sc->sc_ports[pn].sc_mcr))
  return;


 if (umcs7840_get_reg_sync(sc, umcs7840_port_registers[pn].reg_sp, &data))
  return;
 data |= MCS7840_DEV_SPx_RESET_OUT_FIFO | MCS7840_DEV_SPx_RESET_IN_FIFO;
 if (umcs7840_set_reg_sync(sc, umcs7840_port_registers[pn].reg_sp, data))
  return;
 data &= ~(MCS7840_DEV_SPx_RESET_OUT_FIFO | MCS7840_DEV_SPx_RESET_IN_FIFO);
 if (umcs7840_set_reg_sync(sc, umcs7840_port_registers[pn].reg_sp, data))
  return;


 if (umcs7840_set_baudrate(sc, pn, 9600))
  return;







 if (umcs7840_get_UART_reg_sync(sc, pn, MCS7840_UART_REG_LCR, &sc->sc_ports[pn].sc_lcr))
  return;
 if (umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_IER,
     MCS7840_UART_IER_RXSTAT | MCS7840_UART_IER_MODEM))
  return;


 if (umcs7840_get_reg_sync(sc, umcs7840_port_registers[pn].reg_control, &data))
  return;
 data &= ~MCS7840_DEV_CONTROLx_RX_DISABLE;
 if (umcs7840_set_reg_sync(sc, umcs7840_port_registers[pn].reg_control, data))
  return;

 DPRINTF("Port %d has been opened\n", pn);
}
