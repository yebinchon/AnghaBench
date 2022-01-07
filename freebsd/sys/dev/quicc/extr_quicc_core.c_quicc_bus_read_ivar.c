
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct quicc_softc {uintptr_t sc_clock; int sc_rres; } ;
struct quicc_device {uintptr_t qd_devtype; } ;
typedef scalar_t__ device_t ;


 int EINVAL ;



 int QUICC_REG_SCCR ;
 struct quicc_device* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct quicc_softc* device_get_softc (scalar_t__) ;
 int quicc_read4 (int ,int ) ;

int
quicc_bus_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 struct quicc_device *qd;
 struct quicc_softc *sc;
 uint32_t sccr;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 sc = device_get_softc(dev);
 qd = device_get_ivars(child);

 switch (index) {
 case 129:
  *result = sc->sc_clock;
  break;
 case 130:
  sccr = quicc_read4(sc->sc_rres, QUICC_REG_SCCR) & 3;
  *result = sc->sc_clock / ((1 << (sccr + 1)) << sccr);
  break;
 case 128:
  *result = qd->qd_devtype;
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
