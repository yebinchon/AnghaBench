
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pwrctl_softc {int dev; int res; } ;
typedef int bhnd_clksrc ;





 int CHIPC_GET_BITS (int,int ) ;
 int CHIPC_LPOMAXFREQ ;
 int CHIPC_LPOMINFREQ ;
 int CHIPC_PCIMAXFREQ ;
 int CHIPC_PCIMINFREQ ;
 int CHIPC_PLL_SLOWCLK_CTL ;
 int CHIPC_SCC_CD ;
 int CHIPC_SYCC_CD ;
 int CHIPC_SYS_CLK_CTL ;
 int CHIPC_XTALMAXFREQ ;
 int CHIPC_XTALMINFREQ ;
 int INSTACLK_CTL ;
 int PCICLK_CTL ;
 scalar_t__ PWRCTL_QUIRK (struct bhnd_pwrctl_softc*,int ) ;
 int SLOWCLK_CTL ;
 int bhnd_bus_read_4 (int ,int ) ;
 int bhnd_pwrctl_slowclk_src (struct bhnd_pwrctl_softc*) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static uint32_t
bhnd_pwrctl_slowclk_freq(struct bhnd_pwrctl_softc *sc, bool max_freq)
{
 bhnd_clksrc slowclk;
 uint32_t div;
 uint32_t hz;

 slowclk = bhnd_pwrctl_slowclk_src(sc);


 if (PWRCTL_QUIRK(sc, PCICLK_CTL)) {
  if (slowclk == 129)
   div = 64;
  else
   div = 32;
 } else if (PWRCTL_QUIRK(sc, SLOWCLK_CTL)) {
  div = bhnd_bus_read_4(sc->res, CHIPC_PLL_SLOWCLK_CTL);
  div = CHIPC_GET_BITS(div, CHIPC_SCC_CD);
  div = 4 * (div + 1);
 } else if (PWRCTL_QUIRK(sc, INSTACLK_CTL)) {
  if (max_freq) {
   div = 1;
  } else {
   div = bhnd_bus_read_4(sc->res, CHIPC_SYS_CLK_CTL);
   div = CHIPC_GET_BITS(div, CHIPC_SYCC_CD);
   div = 4 * (div + 1);
  }
 } else {
  device_printf(sc->dev, "unknown device type\n");
  return (0);
 }


 switch (slowclk) {
 case 130:
  hz = max_freq ? CHIPC_LPOMAXFREQ : CHIPC_LPOMINFREQ;
  break;
 case 128:
  hz = max_freq ? CHIPC_XTALMAXFREQ : CHIPC_XTALMINFREQ;
  break;
 case 129:
  hz = max_freq ? CHIPC_PCIMAXFREQ : CHIPC_PCIMINFREQ;
  break;
 default:
  device_printf(sc->dev, "unknown slowclk source %#x\n", slowclk);
  return (0);
 }

 return (hz / div);
}
