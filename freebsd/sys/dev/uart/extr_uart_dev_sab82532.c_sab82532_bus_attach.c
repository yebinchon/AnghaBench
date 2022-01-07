
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int * sc_sysdev; struct uart_bas sc_bas; } ;


 int SAB_IMR0 ;
 int SAB_IMR0_CDSC ;
 int SAB_IMR0_RFO ;
 int SAB_IMR0_RPF ;
 int SAB_IMR0_TCD ;
 int SAB_IMR0_TIME ;
 int SAB_IMR1 ;
 int SAB_IMR1_ALLS ;
 int SAB_IMR1_BRKT ;
 int SAB_IMR1_CSC ;
 int SER_DDTR ;
 int SER_DRTS ;
 int UART_PARITY_NONE ;
 int sab82532_bus_getsig (struct uart_softc*) ;
 int sab82532_bus_setsig (struct uart_softc*,int) ;
 int sab82532_init (struct uart_bas*,int,int,int,int ) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
sab82532_bus_attach(struct uart_softc *sc)
{
 struct uart_bas *bas;
 uint8_t imr0, imr1;

 bas = &sc->sc_bas;
 if (sc->sc_sysdev == ((void*)0))
  sab82532_init(bas, 9600, 8, 1, UART_PARITY_NONE);

 imr0 = SAB_IMR0_TCD|SAB_IMR0_TIME|SAB_IMR0_CDSC|SAB_IMR0_RFO|
     SAB_IMR0_RPF;
 uart_setreg(bas, SAB_IMR0, 0xff & ~imr0);
 imr1 = SAB_IMR1_BRKT|SAB_IMR1_ALLS|SAB_IMR1_CSC;
 uart_setreg(bas, SAB_IMR1, 0xff & ~imr1);
 uart_barrier(bas);

 if (sc->sc_sysdev == ((void*)0))
  sab82532_bus_setsig(sc, SER_DDTR|SER_DRTS);
 (void)sab82532_bus_getsig(sc);
 return (0);
}
