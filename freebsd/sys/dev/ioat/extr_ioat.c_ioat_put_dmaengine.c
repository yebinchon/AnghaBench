
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {int submit_lock; } ;
typedef int bus_dmaengine_t ;


 int ioat_put (struct ioat_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct ioat_softc* to_ioat_softc (int ) ;

void
ioat_put_dmaengine(bus_dmaengine_t dmaengine)
{
 struct ioat_softc *ioat;

 ioat = to_ioat_softc(dmaengine);
 mtx_lock(&ioat->submit_lock);
 ioat_put(ioat);
 mtx_unlock(&ioat->submit_lock);
}
