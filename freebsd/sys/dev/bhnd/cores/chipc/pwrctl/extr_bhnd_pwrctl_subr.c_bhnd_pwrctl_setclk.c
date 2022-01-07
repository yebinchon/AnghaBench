
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pwrctl_softc {int res; int chipc_dev; } ;
typedef int bhnd_clock ;




 int CHIPC_PLL_DELAY ;
 int CHIPC_PLL_SLOWCLK_CTL ;
 int CHIPC_SCC_FS ;
 int CHIPC_SCC_IP ;
 int CHIPC_SCC_SS_MASK ;
 int CHIPC_SCC_SS_XTAL ;
 int CHIPC_SCC_XC ;
 int CHIPC_SYCC_HR ;
 int CHIPC_SYS_CLK_CTL ;
 int DELAY (int ) ;
 int ENODEV ;
 int FIXED_CLK ;
 int INSTACLK_CTL ;
 int MA_OWNED ;
 int PWRCTL_LOCK_ASSERT (struct bhnd_pwrctl_softc*,int ) ;
 scalar_t__ PWRCTL_QUIRK (struct bhnd_pwrctl_softc*,int ) ;
 int SLOWCLK_CTL ;
 int bhnd_bus_read_4 (int ,int ) ;
 int bhnd_bus_write_4 (int ,int ,int) ;
 int bhnd_get_hwrev (int ) ;
 int bhnd_pwrctl_hostb_gate_clock (int ,int const) ;
 int bhnd_pwrctl_hostb_ungate_clock (int ,int const) ;

int
bhnd_pwrctl_setclk(struct bhnd_pwrctl_softc *sc, bhnd_clock clock)
{
 uint32_t scc;

 PWRCTL_LOCK_ASSERT(sc, MA_OWNED);


 if (PWRCTL_QUIRK(sc, FIXED_CLK))
  return (ENODEV);


 if (bhnd_get_hwrev(sc->chipc_dev) == 10)
  return (ENODEV);

 if (PWRCTL_QUIRK(sc, SLOWCLK_CTL))
  scc = bhnd_bus_read_4(sc->res, CHIPC_PLL_SLOWCLK_CTL);
 else
  scc = bhnd_bus_read_4(sc->res, CHIPC_SYS_CLK_CTL);

 switch (clock) {
 case 128:

  if (PWRCTL_QUIRK(sc, SLOWCLK_CTL)) {
   scc &= ~(CHIPC_SCC_XC | CHIPC_SCC_FS | CHIPC_SCC_IP);
   scc |= CHIPC_SCC_IP;


   bhnd_pwrctl_hostb_ungate_clock(sc->chipc_dev,
       128);
  } else if (PWRCTL_QUIRK(sc, INSTACLK_CTL)) {
   scc |= CHIPC_SYCC_HR;
  } else {
   return (ENODEV);
  }

  if (PWRCTL_QUIRK(sc, SLOWCLK_CTL))
   bhnd_bus_write_4(sc->res, CHIPC_PLL_SLOWCLK_CTL, scc);
  else
   bhnd_bus_write_4(sc->res, CHIPC_SYS_CLK_CTL, scc);
  DELAY(CHIPC_PLL_DELAY);

  break;

 case 129:

  if (PWRCTL_QUIRK(sc, SLOWCLK_CTL)) {
   scc &= ~(CHIPC_SCC_FS | CHIPC_SCC_IP | CHIPC_SCC_XC);
   if ((scc & CHIPC_SCC_SS_MASK) != CHIPC_SCC_SS_XTAL)
    scc |= CHIPC_SCC_XC;

   bhnd_bus_write_4(sc->res, CHIPC_PLL_SLOWCLK_CTL, scc);



   if (scc & CHIPC_SCC_XC) {
    bhnd_pwrctl_hostb_gate_clock(sc->chipc_dev,
        128);
   }
  } else if (PWRCTL_QUIRK(sc, INSTACLK_CTL)) {

   scc &= ~CHIPC_SYCC_HR;
   bhnd_bus_write_4(sc->res, CHIPC_SYS_CLK_CTL, scc);
  } else {
   return (ENODEV);
  }

  break;

 default:
  return (ENODEV);
 }

 return (0);
}
