
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdsmn_softc {int smn_lock; } ;
typedef int device_t ;


 struct amdsmn_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

int
amdsmn_detach(device_t dev)
{
 struct amdsmn_softc *sc = device_get_softc(dev);

 mtx_destroy(&sc->smn_lock);
 return (0);
}
