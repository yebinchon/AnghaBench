
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int u_int32_t ;
struct powermac_nvram_softc {TYPE_1__* sc_cdev; scalar_t__ sc_data; scalar_t__ sc_bank; scalar_t__ sc_bank1; scalar_t__ sc_bank0; int sc_type; int sc_node; int sc_dev; } ;
typedef int reg ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {struct powermac_nvram_softc* si_drv1; } ;


 int ENXIO ;
 int FLASH_TYPE_AMD ;
 int FLASH_TYPE_SM ;
 int NVRAM_SIZE ;
 int OF_getprop (int ,char*,int *,int) ;
 int bcopy (void*,void*,int) ;
 struct powermac_nvram_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*) ;
 char* ofw_bus_get_compat (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ pmap_mapdev (int ,int) ;
 int pmap_unmapdev (scalar_t__,int) ;
 int powermac_nvram_cdevsw ;
 int powermac_nvram_check (void*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
powermac_nvram_attach(device_t dev)
{
 struct powermac_nvram_softc *sc;
 const char *compatible;
 phandle_t node;
 u_int32_t reg[3];
 int gen0, gen1, i;

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);

 if ((i = OF_getprop(node, "reg", reg, sizeof(reg))) < 8)
  return ENXIO;

 sc->sc_dev = dev;
 sc->sc_node = node;

 compatible = ofw_bus_get_compat(dev);
 if (strcmp(compatible, "amd-0137") == 0)
  sc->sc_type = FLASH_TYPE_AMD;
 else
  sc->sc_type = FLASH_TYPE_SM;





 i = (i/4) - 2;

 sc->sc_bank0 = (vm_offset_t)pmap_mapdev(reg[i], NVRAM_SIZE * 2);
 sc->sc_bank1 = sc->sc_bank0 + NVRAM_SIZE;

 gen0 = powermac_nvram_check((void *)sc->sc_bank0);
 gen1 = powermac_nvram_check((void *)sc->sc_bank1);

 if (gen0 == -1 && gen1 == -1) {
  if ((void *)sc->sc_bank0 != ((void*)0))
   pmap_unmapdev(sc->sc_bank0, NVRAM_SIZE * 2);
  device_printf(dev, "both banks appear to be corrupt\n");
  return ENXIO;
 }
 device_printf(dev, "bank0 generation %d, bank1 generation %d\n",
     gen0, gen1);

 sc->sc_bank = (gen0 > gen1) ? sc->sc_bank0 : sc->sc_bank1;
 bcopy((void *)sc->sc_bank, (void *)sc->sc_data, NVRAM_SIZE);

 sc->sc_cdev = make_dev(&powermac_nvram_cdevsw, 0, 0, 0, 0600,
     "powermac_nvram");
 sc->sc_cdev->si_drv1 = sc;

 return 0;
}
