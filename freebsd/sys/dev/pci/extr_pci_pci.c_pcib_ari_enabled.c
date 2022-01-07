
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {int flags; } ;
typedef int device_t ;


 int PCIB_ENABLE_ARI ;
 struct pcib_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pcib_ari_enabled(device_t pcib)
{
 struct pcib_softc *sc;

 sc = device_get_softc(pcib);

 return ((sc->flags & PCIB_ENABLE_ARI) != 0);
}
