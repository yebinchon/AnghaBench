
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct saf1761_otg_td {scalar_t__ channel; int ep_type; int pc; } ;
struct saf1761_otg_softc {int sc_host_intr_map; int* sc_host_intr_busy_map; int sc_host_isoc_map; int* sc_host_isoc_busy_map; int sc_host_async_map; int* sc_host_async_busy_map; } ;
struct TYPE_3__ {scalar_t__ self_suspended; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;


 TYPE_2__* SAF1761_OTG_PC2UDEV (int ) ;
 scalar_t__ SOTG_HOST_CHANNEL_MAX ;


 int ffs (int) ;

__attribute__((used)) static uint8_t
saf1761_host_channel_alloc(struct saf1761_otg_softc *sc, struct saf1761_otg_td *td)
{
 uint32_t map;
 int x;

 if (td->channel < SOTG_HOST_CHANNEL_MAX)
  return (0);


 if (SAF1761_OTG_PC2UDEV(td->pc)->flags.self_suspended != 0)
  return (1);

 switch (td->ep_type) {
 case 129:
  map = ~(sc->sc_host_intr_map |
      sc->sc_host_intr_busy_map[0] |
      sc->sc_host_intr_busy_map[1]);

  x = ffs(map) - 1;
  if (x < 0 || x > 31)
   break;
  sc->sc_host_intr_map |= (1U << x);
  td->channel = 32 + x;
  return (0);
 case 128:
  map = ~(sc->sc_host_isoc_map |
      sc->sc_host_isoc_busy_map[0] |
      sc->sc_host_isoc_busy_map[1]);

  x = ffs(map) - 1;
  if (x < 0 || x > 31)
   break;
  sc->sc_host_isoc_map |= (1U << x);
  td->channel = x;
  return (0);
 default:
  map = ~(sc->sc_host_async_map |
      sc->sc_host_async_busy_map[0] |
      sc->sc_host_async_busy_map[1]);

  x = ffs(map) - 1;
  if (x < 0 || x > 31)
   break;
  sc->sc_host_async_map |= (1U << x);
  td->channel = 64 + x;
  return (0);
 }
 return (1);
}
