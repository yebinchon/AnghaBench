
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_softc {int dev; int mtx; } ;
typedef int device_t ;


 int MTX_DEF ;
 int bus_generic_attach (int ) ;
 int device_get_nameunit (int ) ;
 struct ow_softc* device_get_softc (int ) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ow_device_found ;
 int ow_enumerate (int ,int ,int ) ;
 int ow_search_rom ;

__attribute__((used)) static int
ow_attach(device_t ndev)
{
 struct ow_softc *sc;
 sc = device_get_softc(ndev);
 sc->dev = ndev;
 mtx_init(&sc->mtx, device_get_nameunit(sc->dev), "ow", MTX_DEF);
 ow_enumerate(ndev, ow_search_rom, ow_device_found);
 return bus_generic_attach(ndev);
}
