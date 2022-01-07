
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct opal_nvram_softc {TYPE_1__* sc_cdev; int * sc_buf; int sc_buf_phys; int sc_size; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {struct opal_nvram_softc* si_drv1; } ;


 int BUS_SPACE_MAXADDR ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int NVRAM_BUFSIZE ;
 int OF_getencprop (int ,char*,int *,int) ;
 int PAGE_SIZE ;
 int * contigmalloc (int ,int ,int ,int ,int ,int ,int ) ;
 struct opal_nvram_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*) ;
 int ofw_bus_get_node (int ) ;
 int opal_nvram_cdevsw ;
 int pmap_kextract (int ) ;

__attribute__((used)) static int
opal_nvram_attach(device_t dev)
{
 struct opal_nvram_softc *sc;
 phandle_t node;
 int err;

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);

 sc->sc_dev = dev;

 err = OF_getencprop(node, "#bytes", &sc->sc_size,
     sizeof(sc->sc_size));

 if (err < 0)
  return (ENXIO);

 sc->sc_buf = contigmalloc(NVRAM_BUFSIZE, M_DEVBUF, M_WAITOK,
     0, BUS_SPACE_MAXADDR, PAGE_SIZE, 0);
 if (sc->sc_buf == ((void*)0)) {
  device_printf(dev, "No memory for buffer.\n");
  return (ENXIO);
 }
 sc->sc_buf_phys = pmap_kextract((vm_offset_t)sc->sc_buf);
 sc->sc_cdev = make_dev(&opal_nvram_cdevsw, 0, 0, 0, 0600,
     "nvram");
 sc->sc_cdev->si_drv1 = sc;

 return (0);
}
