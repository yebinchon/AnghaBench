
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbus_softc {uintptr_t sc_ign; } ;
struct sbus_devinfo {uintptr_t sdi_burstsz; uintptr_t sdi_clockfreq; uintptr_t sdi_slot; } ;
typedef int device_t ;


 int ENOENT ;




 struct sbus_devinfo* device_get_ivars (int ) ;
 struct sbus_softc* device_get_softc (int ) ;

__attribute__((used)) static int
sbus_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct sbus_softc *sc;
 struct sbus_devinfo *dinfo;

 sc = device_get_softc(dev);
 if ((dinfo = device_get_ivars(child)) == ((void*)0))
  return (ENOENT);
 switch (which) {
 case 131:
  *result = dinfo->sdi_burstsz;
  break;
 case 130:
  *result = dinfo->sdi_clockfreq;
  break;
 case 129:
  *result = sc->sc_ign;
  break;
 case 128:
  *result = dinfo->sdi_slot;
  break;
 default:
  return (ENOENT);
 }
 return (0);
}
