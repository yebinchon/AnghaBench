
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct umcs7840_softc {int dummy; } ;
struct ucom_softc {size_t sc_portno; struct umcs7840_softc* sc_parent; } ;
struct TYPE_2__ {int reg_control; } ;


 int DPRINTF (char*,size_t) ;
 int MCS7840_DEV_CONTROLx_RX_DISABLE ;
 int MCS7840_UART_REG_IER ;
 int MCS7840_UART_REG_MCR ;
 scalar_t__ umcs7840_get_reg_sync (struct umcs7840_softc*,int ,int *) ;
 TYPE_1__* umcs7840_port_registers ;
 int umcs7840_set_UART_reg_sync (struct umcs7840_softc*,size_t,int ,int ) ;
 scalar_t__ umcs7840_set_reg_sync (struct umcs7840_softc*,int ,int ) ;
 int umcs7840_stop_read (struct ucom_softc*) ;
 int umcs7840_stop_write (struct ucom_softc*) ;

__attribute__((used)) static void
umcs7840_cfg_close(struct ucom_softc *ucom)
{
 struct umcs7840_softc *sc = ucom->sc_parent;
 uint16_t pn = ucom->sc_portno;
 uint8_t data;

 umcs7840_stop_read(ucom);
 umcs7840_stop_write(ucom);

 umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_MCR, 0);
 umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_IER, 0);


 if (umcs7840_get_reg_sync(sc, umcs7840_port_registers[pn].reg_control, &data))
  return;
 data |= MCS7840_DEV_CONTROLx_RX_DISABLE;
 if (umcs7840_set_reg_sync(sc, umcs7840_port_registers[pn].reg_control, data))
  return;
 DPRINTF("Port %d has been closed\n", pn);
}
