
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ahb_softc {int sc_sc; } ;
typedef int device_t ;


 int ath_shutdown (int *) ;
 struct ath_ahb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ath_ahb_shutdown(device_t dev)
{
 struct ath_ahb_softc *psc = device_get_softc(dev);

 ath_shutdown(&psc->sc_sc);
 return (0);
}
