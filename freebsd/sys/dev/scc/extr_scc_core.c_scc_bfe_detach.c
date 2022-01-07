
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_softc {int sc_hwmtx; struct scc_chan* sc_chan; int * sc_rres; int sc_rrid; int sc_rtype; struct scc_class* sc_class; } ;
struct scc_mode {scalar_t__ m_attached; int m_dev; } ;
struct scc_class {int cl_channels; } ;
struct scc_chan {int * ch_ires; int ch_irid; int ch_icookie; struct scc_mode* ch_mode; } ;
typedef int device_t ;


 int ENXIO ;
 int M_SCC ;
 int SCC_NMODES ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 scalar_t__ device_detach (int ) ;
 struct scc_softc* device_get_softc (int ) ;
 int free (struct scc_chan*,int ) ;
 int mtx_destroy (int *) ;

int
scc_bfe_detach(device_t dev)
{
 struct scc_chan *ch;
 struct scc_class *cl;
 struct scc_mode *m;
 struct scc_softc *sc;
 int chan, error, mode;

 sc = device_get_softc(dev);
 cl = sc->sc_class;


 error = 0;
 for (chan = 0; chan < cl->cl_channels; chan++) {
  ch = &sc->sc_chan[chan];
  for (mode = 0; mode < SCC_NMODES; mode++) {
   m = &ch->ch_mode[mode];
   if (!m->m_attached)
    continue;
   if (device_detach(m->m_dev) != 0)
    error = ENXIO;
   else
    m->m_attached = 0;
  }
 }

 if (error)
  return (error);

 for (chan = 0; chan < cl->cl_channels; chan++) {
  ch = &sc->sc_chan[chan];
  if (ch->ch_ires == ((void*)0))
   continue;
  bus_teardown_intr(dev, ch->ch_ires, ch->ch_icookie);
  bus_release_resource(dev, SYS_RES_IRQ, ch->ch_irid,
      ch->ch_ires);
 }
 bus_release_resource(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);

 free(sc->sc_chan, M_SCC);

 mtx_destroy(&sc->sc_hwmtx);
 return (0);
}
