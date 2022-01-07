
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct hdac_softc {struct mtx* lock; } ;
typedef int device_t ;


 struct hdac_softc* device_get_softc (int ) ;

__attribute__((used)) static struct mtx *
hdac_get_mtx(device_t dev, device_t child)
{
 struct hdac_softc *sc = device_get_softc(dev);

 return (sc->lock);
}
