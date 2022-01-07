
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_softc {int unsol_registered; } ;
typedef int device_t ;


 struct hdac_softc* device_get_softc (int ) ;
 int hdac_poll_reinit (struct hdac_softc*) ;

__attribute__((used)) static int
hdac_unsol_alloc(device_t dev, device_t child, int tag)
{
 struct hdac_softc *sc = device_get_softc(dev);

 sc->unsol_registered++;
 hdac_poll_reinit(sc);
 return (tag);
}
