
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t rclk; uintptr_t regshft; } ;
struct scc_softc {int sc_hwmtx; TYPE_1__ sc_bas; struct scc_class* sc_class; } ;
struct scc_mode {uintptr_t m_mode; struct scc_chan* m_chan; } ;
struct scc_class {uintptr_t cl_class; } ;
struct scc_chan {uintptr_t ch_nr; } ;
typedef scalar_t__ device_t ;


 int EINVAL ;






 struct scc_mode* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct scc_softc* device_get_softc (scalar_t__) ;

int
scc_bus_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 struct scc_chan *ch;
 struct scc_class *cl;
 struct scc_mode *m;
 struct scc_softc *sc;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 sc = device_get_softc(dev);
 cl = sc->sc_class;
 m = device_get_ivars(child);
 ch = m->m_chan;

 switch (index) {
 case 133:
  *result = ch->ch_nr;
  break;
 case 132:
  *result = cl->cl_class;
  break;
 case 131:
  *result = sc->sc_bas.rclk;
  break;
 case 129:
  *result = m->m_mode;
  break;
 case 128:
  *result = sc->sc_bas.regshft;
  break;
 case 130:
  *result = (uintptr_t)&sc->sc_hwmtx;
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
