
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {int dummy; } ;
typedef int device_t ;


 int SGE_LOCK (struct sge_softc*) ;
 int SGE_UNLOCK (struct sge_softc*) ;
 struct sge_softc* device_get_softc (int ) ;
 int sge_stop (struct sge_softc*) ;

__attribute__((used)) static int
sge_shutdown(device_t dev)
{
 struct sge_softc *sc;

 sc = device_get_softc(dev);
 SGE_LOCK(sc);
 sge_stop(sc);
 SGE_UNLOCK(sc);
 return (0);
}
