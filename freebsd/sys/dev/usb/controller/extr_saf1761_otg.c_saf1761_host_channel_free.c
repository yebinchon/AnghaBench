
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct saf1761_otg_td {scalar_t__ channel; int ep_type; } ;
struct saf1761_otg_softc {unsigned int sc_host_intr_map; unsigned int sc_host_intr_suspend_map; unsigned int* sc_host_intr_busy_map; unsigned int sc_host_isoc_map; unsigned int sc_host_isoc_suspend_map; unsigned int* sc_host_isoc_busy_map; unsigned int sc_host_async_map; unsigned int sc_host_async_suspend_map; unsigned int* sc_host_async_busy_map; } ;


 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int) ;
 int SOTG_ATL_PTD_SKIP_PTD ;
 scalar_t__ SOTG_HOST_CHANNEL_MAX ;
 int SOTG_INT_PTD_SKIP_PTD ;
 int SOTG_ISO_PTD_SKIP_PTD ;


 int saf1761_otg_enable_psof (struct saf1761_otg_softc*,int) ;

__attribute__((used)) static void
saf1761_host_channel_free(struct saf1761_otg_softc *sc, struct saf1761_otg_td *td)
{
 uint32_t x;

 if (td->channel >= SOTG_HOST_CHANNEL_MAX)
  return;

 switch (td->ep_type) {
 case 129:
  x = td->channel - 32;
  td->channel = SOTG_HOST_CHANNEL_MAX;
  sc->sc_host_intr_map &= ~(1U << x);
  sc->sc_host_intr_suspend_map &= ~(1U << x);
  sc->sc_host_intr_busy_map[0] |= (1U << x);
  SAF1761_WRITE_LE_4(sc, SOTG_INT_PTD_SKIP_PTD,
      (~sc->sc_host_intr_map) | sc->sc_host_intr_suspend_map);
  break;
 case 128:
  x = td->channel;
  td->channel = SOTG_HOST_CHANNEL_MAX;
  sc->sc_host_isoc_map &= ~(1U << x);
  sc->sc_host_isoc_suspend_map &= ~(1U << x);
  sc->sc_host_isoc_busy_map[0] |= (1U << x);
  SAF1761_WRITE_LE_4(sc, SOTG_ISO_PTD_SKIP_PTD,
      (~sc->sc_host_isoc_map) | sc->sc_host_isoc_suspend_map);
  break;
 default:
  x = td->channel - 64;
  td->channel = SOTG_HOST_CHANNEL_MAX;
  sc->sc_host_async_map &= ~(1U << x);
  sc->sc_host_async_suspend_map &= ~(1U << x);
  sc->sc_host_async_busy_map[0] |= (1U << x);
  SAF1761_WRITE_LE_4(sc, SOTG_ATL_PTD_SKIP_PTD,
      (~sc->sc_host_async_map) | sc->sc_host_async_suspend_map);
  break;
 }
 saf1761_otg_enable_psof(sc, 1);
}
