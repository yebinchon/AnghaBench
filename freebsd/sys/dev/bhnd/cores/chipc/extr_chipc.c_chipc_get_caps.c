
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_caps {int dummy; } ;
struct chipc_softc {struct chipc_caps caps; } ;
typedef int device_t ;


 struct chipc_softc* device_get_softc (int ) ;

__attribute__((used)) static struct chipc_caps *
chipc_get_caps(device_t dev)
{
 struct chipc_softc *sc;

 sc = device_get_softc(dev);
 return (&sc->caps);
}
