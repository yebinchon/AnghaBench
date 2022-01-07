
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_fdt_softc {int quirks; int num_slots; int no_18v; int wp_inverted; void* max_clk; int sdma_boundary; } ;
typedef int phandle_t ;
typedef void* pcell_t ;
typedef int device_t ;
typedef int cid ;
struct TYPE_2__ {int ocd_data; } ;


 int ENXIO ;
 scalar_t__ OF_getencprop (int ,char*,void**,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int SDHCI_BLKSZ_SDMA_BNDRY_4K ;





 int SDHCI_QUIRK_ALL_SLOTS_NON_REMOVABLE ;
 int SDHCI_QUIRK_BROKEN_AUTO_STOP ;
 int SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY ;
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ;
 int compat_data ;
 struct sdhci_fdt_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
sdhci_fdt_probe(device_t dev)
{
 struct sdhci_fdt_softc *sc = device_get_softc(dev);
 phandle_t node;
 pcell_t cid;

 sc->quirks = 0;
 sc->num_slots = 1;
 sc->max_clk = 0;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 switch (ofw_bus_search_compatible(dev, compat_data)->ocd_data) {
 case 132:
  sc->quirks = SDHCI_QUIRK_BROKEN_AUTO_STOP;
  device_set_desc(dev, "ARMADA38X SDHCI controller");
  break;
 case 131:
  device_set_desc(dev, "generic fdt SDHCI controller");
  break;
 case 130:
  sc->quirks = SDHCI_QUIRK_ALL_SLOTS_NON_REMOVABLE |
      SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY;
  sc->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_4K;
  device_set_desc(dev, "Qualcomm FDT SDHCI controller");
  break;
 case 129:
  device_set_desc(dev, "Rockchip RK3399 fdt SDHCI controller");
  break;
 case 128:
  sc->quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK;
  device_set_desc(dev, "Zynq-7000 generic fdt SDHCI controller");
  break;
 default:
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);


 if ((OF_getencprop(node, "quirks", &cid, sizeof(cid))) > 0)
  sc->quirks = cid;
 if ((OF_getencprop(node, "num-slots", &cid, sizeof(cid))) > 0)
  sc->num_slots = cid;
 if ((OF_getencprop(node, "max-frequency", &cid, sizeof(cid))) > 0)
  sc->max_clk = cid;
 if (OF_hasprop(node, "no-1-8-v"))
  sc->no_18v = 1;
 if (OF_hasprop(node, "wp-inverted"))
  sc->wp_inverted = 1;

 return (0);
}
