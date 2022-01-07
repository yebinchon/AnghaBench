
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqmdio_softc {int sc_lock; int sc_offset; int sc_handle; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int MTX_DEF ;
 int SYS_RES_MEMORY ;
 int bus_get_resource (int ,int ,int ,int *,int *) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct pqmdio_softc* device_get_softc (int ) ;
 int fman_get_bushandle (int ,int *) ;
 int mtx_init (int *,int ,char*,int ) ;

__attribute__((used)) static int
pqmdio_fdt_attach(device_t dev)
{
 struct pqmdio_softc *sc;
 rman_res_t start, count;

 sc = device_get_softc(dev);

 fman_get_bushandle(device_get_parent(dev), &sc->sc_handle);
 bus_get_resource(dev, SYS_RES_MEMORY, 0, &start, &count);
 sc->sc_offset = start;

 mtx_init(&sc->sc_lock, device_get_nameunit(dev), "QorIQ MDIO lock",
     MTX_DEF);

 return (0);
}
