
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_dev; int sc_bas; } ;
typedef scalar_t__ clk_ident_t ;


 scalar_t__ INVALID_CLK_IDENT ;
 int MDR1_MODE_DISABLE ;
 int MDR1_MODE_UART ;
 int MDR1_REG ;
 int SYSCC_REG ;
 int SYSCC_SOFTRESET ;
 int SYSS_REG ;
 int SYSS_STATUS_RESETDONE ;
 scalar_t__ UART1_CLK ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int ns8250_bus_probe (struct uart_softc*) ;
 scalar_t__ ti_hwmods_get_clock (int ) ;
 int ti_prcm_clk_enable (scalar_t__) ;
 int uart_getreg (int *,int ) ;
 int uart_setreg (int *,int ,int ) ;

__attribute__((used)) static int
ti8250_bus_probe(struct uart_softc *sc)
{
 int status;
 clk_ident_t clkid;


 clkid = ti_hwmods_get_clock(sc->sc_dev);
 if (clkid == INVALID_CLK_IDENT) {
  device_printf(sc->sc_dev,
      "failed to get clock based on hwmods\n");
  clkid = UART1_CLK + device_get_unit(sc->sc_dev);
 }
 if ((status = ti_prcm_clk_enable(clkid)) != 0)
  return (status);






 uart_setreg(&sc->sc_bas, MDR1_REG, MDR1_MODE_DISABLE);
 uart_setreg(&sc->sc_bas, SYSCC_REG, SYSCC_SOFTRESET);
 while (uart_getreg(&sc->sc_bas, SYSS_REG) & SYSS_STATUS_RESETDONE)
  continue;
 uart_setreg(&sc->sc_bas, MDR1_REG, MDR1_MODE_UART);

 status = ns8250_bus_probe(sc);
 if (status == 0)
  device_set_desc(sc->sc_dev, "TI UART (16550 compatible)");

 return (status);
}
