
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iicoc_softc {int sc_mtx; } ;
typedef int device_t ;


 struct iicoc_softc* device_get_softc (int ) ;
 int iicoc_init (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
iicoc_reset(device_t dev, u_char speed, u_char addr, u_char *oldadr)
{
 int error;
 struct iicoc_softc *sc;

 sc = device_get_softc(dev);
 mtx_lock(&sc->sc_mtx);
 error = iicoc_init(dev);
 mtx_unlock(&sc->sc_mtx);
 return (error);
}
