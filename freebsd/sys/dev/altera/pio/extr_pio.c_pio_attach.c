
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_softc {void* dev; int * res; int bsh; int bst; } ;
struct fdt_ic {int iph; void* dev; } ;
typedef int phandle_t ;
typedef void* device_t ;


 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INSERT_HEAD (int *,struct fdt_ic*,int ) ;
 scalar_t__ bus_alloc_resources (void*,int ,int *) ;
 struct pio_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int fdt_ic_list_head ;
 int fdt_ics ;
 struct fdt_ic* malloc (int,int ,int) ;
 int ofw_bus_get_node (void*) ;
 int pio_spec ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
pio_attach(device_t dev)
{
 struct pio_softc *sc;
 struct fdt_ic *fic;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, pio_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 if ((node = ofw_bus_get_node(sc->dev)) == -1)
  return (ENXIO);

 fic = malloc(sizeof(*fic), M_DEVBUF, M_WAITOK|M_ZERO);
 fic->iph = node;
 fic->dev = dev;
 SLIST_INSERT_HEAD(&fdt_ic_list_head, fic, fdt_ics);

 return (0);
}
