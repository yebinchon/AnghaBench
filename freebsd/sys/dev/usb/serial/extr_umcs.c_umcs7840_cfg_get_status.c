
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct umcs7840_softc {int dummy; } ;
struct ucom_softc {int sc_portno; struct umcs7840_softc* sc_parent; } ;


 int DPRINTF (char*,int,int,int) ;
 int MCS7840_UART_MSR_NEGCTS ;
 int MCS7840_UART_MSR_NEGDCD ;
 int MCS7840_UART_MSR_NEGDSR ;
 int MCS7840_UART_MSR_NEGRI ;
 int MCS7840_UART_REG_LSR ;
 int MCS7840_UART_REG_MSR ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int umcs7840_get_UART_reg_sync (struct umcs7840_softc*,int,int ,int*) ;

__attribute__((used)) static void
umcs7840_cfg_get_status(struct ucom_softc *ucom, uint8_t *lsr, uint8_t *msr)
{
 struct umcs7840_softc *sc = ucom->sc_parent;
 uint8_t pn = ucom->sc_portno;
 uint8_t hw_msr = 0;





 umcs7840_get_UART_reg_sync(sc, pn, MCS7840_UART_REG_LSR, lsr);
 umcs7840_get_UART_reg_sync(sc, pn, MCS7840_UART_REG_MSR, &hw_msr);

 if (hw_msr & MCS7840_UART_MSR_NEGCTS)
  *msr |= SER_CTS;

 if (hw_msr & MCS7840_UART_MSR_NEGDCD)
  *msr |= SER_DCD;

 if (hw_msr & MCS7840_UART_MSR_NEGRI)
  *msr |= SER_RI;

 if (hw_msr & MCS7840_UART_MSR_NEGDSR)
  *msr |= SER_DSR;

 DPRINTF("Port %d status: LSR=%02x MSR=%02x\n", ucom->sc_portno, *lsr, *msr);
}
