
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {void* sub; void* sec; } ;
struct TYPE_5__ {TYPE_1__ bus; void* domain; void* pribus; void* bridgectl; } ;
struct TYPE_6__ {TYPE_2__ ops_pcib_sc; } ;
struct apb_softc {void* sc_memmap; void* sc_iomap; TYPE_3__ sc_bsc; } ;
typedef int device_t ;


 int APBR_IOMAP ;
 int APBR_MEMMAP ;
 int APB_IO_SCALE ;
 int APB_MEM_SCALE ;
 int CTLFLAG_RD ;
 int OID_AUTO ;
 int PCIR_BRIDGECTL_1 ;
 int PCIR_PRIBUS_1 ;
 int PCIR_SECBUS_1 ;
 int PCIR_SUBBUS_1 ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int ,void**,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int apb_map_print (void*,int ) ;
 scalar_t__ bootverbose ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 struct apb_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_pcib_gen_setup (int ) ;
 void* pci_get_bus (int ) ;
 void* pci_get_domain (int ) ;
 void* pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,void*,int) ;
 int printf (char*) ;

__attribute__((used)) static int
apb_attach(device_t dev)
{
 struct apb_softc *sc;
 struct sysctl_ctx_list *sctx;
 struct sysctl_oid *soid;

 sc = device_get_softc(dev);




 sc->sc_bsc.ops_pcib_sc.domain = pci_get_domain(dev);
 sc->sc_bsc.ops_pcib_sc.pribus = pci_get_bus(dev);
 pci_write_config(dev, PCIR_PRIBUS_1, sc->sc_bsc.ops_pcib_sc.pribus, 1);
 sc->sc_bsc.ops_pcib_sc.bus.sec =
     pci_read_config(dev, PCIR_SECBUS_1, 1);
 sc->sc_bsc.ops_pcib_sc.bus.sub =
     pci_read_config(dev, PCIR_SUBBUS_1, 1);
 sc->sc_bsc.ops_pcib_sc.bridgectl =
     pci_read_config(dev, PCIR_BRIDGECTL_1, 2);
 sc->sc_iomap = pci_read_config(dev, APBR_IOMAP, 1);
 sc->sc_memmap = pci_read_config(dev, APBR_MEMMAP, 1);




 sctx = device_get_sysctl_ctx(dev);
 soid = device_get_sysctl_tree(dev);
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "domain",
     CTLFLAG_RD, &sc->sc_bsc.ops_pcib_sc.domain, 0,
     "Domain number");
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "pribus",
     CTLFLAG_RD, &sc->sc_bsc.ops_pcib_sc.pribus, 0,
     "Primary bus number");
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "secbus",
     CTLFLAG_RD, &sc->sc_bsc.ops_pcib_sc.bus.sec, 0,
     "Secondary bus number");
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "subbus",
     CTLFLAG_RD, &sc->sc_bsc.ops_pcib_sc.bus.sub, 0,
     "Subordinate bus number");

 ofw_pcib_gen_setup(dev);

 if (bootverbose) {
  device_printf(dev, "  domain            %d\n",
      sc->sc_bsc.ops_pcib_sc.domain);
  device_printf(dev, "  secondary bus     %d\n",
      sc->sc_bsc.ops_pcib_sc.bus.sec);
  device_printf(dev, "  subordinate bus   %d\n",
      sc->sc_bsc.ops_pcib_sc.bus.sub);
  device_printf(dev, "  I/O decode        ");
  apb_map_print(sc->sc_iomap, APB_IO_SCALE);
  printf("\n");
  device_printf(dev, "  memory decode     ");
  apb_map_print(sc->sc_memmap, APB_MEM_SCALE);
  printf("\n");
 }

 device_add_child(dev, "pci", -1);
 return (bus_generic_attach(dev));
}
