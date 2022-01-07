
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct diu_softc {struct fb_info sc_info; } ;
typedef int device_t ;


 struct diu_softc* device_get_softc (int ) ;

__attribute__((used)) static struct fb_info *
diu_fb_getinfo(device_t dev)
{
 struct diu_softc *sc = device_get_softc(dev);

 return (&sc->sc_info);
}
