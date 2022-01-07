
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct ata_kauai_softc {int shasta; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ kpd_devid; int * kpd_desc; } ;


 int ENXIO ;
 int SYS_RES_IRQ ;
 int ata_probe (int ) ;
 int bus_set_resource (int ,int ,int ,int,int) ;
 int bzero (struct ata_kauai_softc*,int) ;
 struct ata_kauai_softc* device_get_softc (int ) ;
 int device_set_desc (int ,int *) ;
 TYPE_1__* kauai_pci_devlist ;
 char* ofw_bus_get_compat (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ pci_get_devid (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ata_kauai_probe(device_t dev)
{
 struct ata_kauai_softc *sc;
 u_int32_t devid;
 phandle_t node;
 const char *compatstring = ((void*)0);
 int i, found;

 found = 0;
 devid = pci_get_devid(dev);
        for (i = 0; kauai_pci_devlist[i].kpd_desc != ((void*)0); i++) {
                if (devid == kauai_pci_devlist[i].kpd_devid) {
   found = 1;
                        device_set_desc(dev, kauai_pci_devlist[i].kpd_desc);
  }
 }

 if (!found)
  return (ENXIO);

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);
 bzero(sc, sizeof(struct ata_kauai_softc));

 compatstring = ofw_bus_get_compat(dev);
 if (compatstring != ((void*)0) && strcmp(compatstring,"shasta-ata") == 0)
  sc->shasta = 1;


 if (!sc->shasta &&
     (compatstring == ((void*)0) || strcmp(compatstring, "K2-UATA") != 0))
  bus_set_resource(dev, SYS_RES_IRQ, 0, 39, 1);

        return (ata_probe(dev));
}
