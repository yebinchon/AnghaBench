
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
typedef int device_t ;


 struct iwm_softc* device_get_softc (int ) ;
 int iwm_detach_local (struct iwm_softc*,int) ;

__attribute__((used)) static int
iwm_detach(device_t dev)
{
 struct iwm_softc *sc = device_get_softc(dev);

 return (iwm_detach_local(sc, 1));
}
