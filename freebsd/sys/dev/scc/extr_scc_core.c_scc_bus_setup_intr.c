
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scc_softc {struct scc_chan* sc_chan; TYPE_1__* sc_class; scalar_t__ sc_fastintr; scalar_t__ sc_polled; } ;
struct scc_mode {int m_hasintr; int m_fastintr; int * ih; int ** ih_src; void* ih_arg; } ;
struct scc_chan {int ch_icookie; int * ch_ires; } ;
struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef scalar_t__ device_t ;
struct TYPE_2__ {int cl_channels; } ;


 int EINVAL ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int SCC_ISRCCNT ;
 int * SERDEV_IHAND (scalar_t__,int) ;
 int SER_INT_OVERRUN ;
 int bus_setup_intr (scalar_t__,int *,int,int *,int *,struct scc_softc*,int *) ;
 int bus_teardown_intr (scalar_t__,int *,int ) ;
 struct scc_mode* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct scc_softc* device_get_softc (scalar_t__) ;
 scalar_t__ scc_bfe_intr ;

int
scc_bus_setup_intr(device_t dev, device_t child, struct resource *r, int flags,
    driver_filter_t *filt, void (*ihand)(void *), void *arg, void **cookiep)
{
 struct scc_chan *ch;
 struct scc_mode *m;
 struct scc_softc *sc;
 int c, i, isrc;

 if (device_get_parent(child) != dev)
  return (EINVAL);


 if (filt == ((void*)0) && !(flags & INTR_MPSAFE))
  return (EINVAL);

 sc = device_get_softc(dev);
 if (sc->sc_polled)
  return (ENXIO);

 if (sc->sc_fastintr && filt == ((void*)0)) {
  sc->sc_fastintr = 0;
  for (c = 0; c < sc->sc_class->cl_channels; c++) {
   ch = &sc->sc_chan[c];
   if (ch->ch_ires == ((void*)0))
    continue;
   bus_teardown_intr(dev, ch->ch_ires, ch->ch_icookie);
   bus_setup_intr(dev, ch->ch_ires,
       INTR_TYPE_TTY | INTR_MPSAFE, ((void*)0),
       (driver_intr_t *)scc_bfe_intr, sc, &ch->ch_icookie);
  }
 }

 m = device_get_ivars(child);
 m->m_hasintr = 1;
 m->m_fastintr = (filt != ((void*)0)) ? 1 : 0;
 m->ih = (filt != ((void*)0)) ? filt : (driver_filter_t *)ihand;
 m->ih_arg = arg;

 i = 0, isrc = SER_INT_OVERRUN;
 while (i < SCC_ISRCCNT) {
  m->ih_src[i] = SERDEV_IHAND(child, isrc);
  if (m->ih_src[i] != ((void*)0))
   m->ih = ((void*)0);
  i++, isrc <<= 1;
 }
 return (0);
}
