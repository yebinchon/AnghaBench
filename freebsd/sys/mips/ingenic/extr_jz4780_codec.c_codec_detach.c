
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codec_softc {int res; } ;
typedef int device_t ;


 int bus_release_resources (int ,int ,int ) ;
 int codec_spec ;
 struct codec_softc* device_get_softc (int ) ;

__attribute__((used)) static int
codec_detach(device_t dev)
{
 struct codec_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resources(dev, codec_spec, sc->res);

 return (0);
}
