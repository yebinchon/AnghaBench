
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct hdacc_softc {struct mtx* lock; } ;
typedef int device_t ;


 struct hdacc_softc* device_get_softc (int ) ;

__attribute__((used)) static struct mtx *
hdacc_get_mtx(device_t dev, device_t child)
{
 struct hdacc_softc *codec = device_get_softc(dev);

 return (codec->lock);
}
