
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_caps {int pll_type; } ;
struct bhnd_pwrctl_softc {int res; int chipc_dev; } ;
struct bhnd_chipid {int dummy; } ;
typedef scalar_t__ bus_size_t ;


 struct chipc_caps* BHND_CHIPC_GET_CAPS (int ) ;
 scalar_t__ CHIPC_CLKC_N ;
 int MA_OWNED ;
 int PWRCTL_LOCK_ASSERT (struct bhnd_pwrctl_softc*,int ) ;
 int bhnd_bus_read_4 (int ,scalar_t__) ;
 struct bhnd_chipid* bhnd_get_chipid (int ) ;
 scalar_t__ bhnd_pwrctl_si_clkreg_m (struct bhnd_chipid const*,int ,int *) ;
 int bhnd_pwrctl_si_clock_rate (struct bhnd_chipid const*,int ,int ,int ) ;

uint32_t
bhnd_pwrctl_getclk_speed(struct bhnd_pwrctl_softc *sc)
{
 const struct bhnd_chipid *cid;
 struct chipc_caps *ccaps;
 bus_size_t creg;
 uint32_t n, m;
 uint32_t rate;

 PWRCTL_LOCK_ASSERT(sc, MA_OWNED);

 cid = bhnd_get_chipid(sc->chipc_dev);
 ccaps = BHND_CHIPC_GET_CAPS(sc->chipc_dev);

 n = bhnd_bus_read_4(sc->res, CHIPC_CLKC_N);


 creg = bhnd_pwrctl_si_clkreg_m(cid, ccaps->pll_type, &rate);
 if (creg == 0)
  return (rate);


 m = bhnd_bus_read_4(sc->res, creg);
 return (bhnd_pwrctl_si_clock_rate(cid, ccaps->pll_type, n, m));
}
