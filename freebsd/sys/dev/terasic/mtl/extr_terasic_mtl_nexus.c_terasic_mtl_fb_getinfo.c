
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct terasic_mtl_softc {struct fb_info mtl_fb_info; } ;
typedef int device_t ;


 struct terasic_mtl_softc* device_get_softc (int ) ;

__attribute__((used)) static struct fb_info *
terasic_mtl_fb_getinfo(device_t dev)
{
 struct terasic_mtl_softc *sc;

 sc = device_get_softc(dev);
 return (&sc->mtl_fb_info);
}
