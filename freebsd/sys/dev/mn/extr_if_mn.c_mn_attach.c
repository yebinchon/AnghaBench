
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct resource {int dummy; } ;
struct mn_softc {int unit; int node; int nodename; struct f54rreg* f54r; void* m1v; struct f54wreg* f54w; void* m0v; struct m32xreg* m32x; int intrhand; int * irq; void* m1p; void* m0p; int name; int framing; int dev; } ;
struct m32xreg {int dummy; } ;
struct f54wreg {int dummy; } ;
struct f54rreg {int vstr; } ;
typedef int device_t ;


 int E1 ;
 int ENXIO ;
 int INTR_TYPE_NET ;
 int M_MN ;
 int M_WAITOK ;
 int M_ZERO ;
 char* NG_MN_NODE_TYPE ;
 int NG_NODE_SET_PRIVATE (int ,struct mn_softc*) ;
 int NG_NODE_UNREF (int ) ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_PERRESPEN ;
 int PCIR_BAR (int) ;
 int PCIR_COMMAND ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int ,int *,int ,struct mn_softc*,int *) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_softc (int ,struct mn_softc*) ;
 int free (struct mn_softc*,int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int mn_intr ;
 int mn_reset (struct mn_softc*) ;
 int mntypestruct ;
 scalar_t__ ng_make_node_common (int *,int *) ;
 scalar_t__ ng_name_node (int ,int ) ;
 scalar_t__ ng_newtype (int *) ;
 int pci_get_revid (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int printf (char*,...) ;
 void* rman_get_start (struct resource*) ;
 void* rman_get_virtual (struct resource*) ;
 int sprintf (int ,char*,...) ;

__attribute__((used)) static int
mn_attach (device_t self)
{
 struct mn_softc *sc;
 u_int32_t u;
 u_int32_t ver;
 static int once;
 int rid, error;
 struct resource *res;

 if (!once) {
  if (ng_newtype(&mntypestruct))
   printf("ng_newtype failed\n");
  once++;
 }

 sc = (struct mn_softc *)malloc(sizeof *sc, M_MN, M_WAITOK | M_ZERO);
 device_set_softc(self, sc);

 sc->dev = self;
 sc->unit = device_get_unit(self);
 sc->framing = E1;
 sprintf(sc->name, "mn%d", sc->unit);

        rid = PCIR_BAR(0);
        res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
        if (res == ((void*)0)) {
                device_printf(self, "Could not map memory\n");
  free(sc, M_MN);
                return ENXIO;
        }
        sc->m0v = rman_get_virtual(res);
        sc->m0p = rman_get_start(res);

        rid = PCIR_BAR(1);
        res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
        if (res == ((void*)0)) {
                device_printf(self, "Could not map memory\n");
  free(sc, M_MN);
                return ENXIO;
        }
        sc->m1v = rman_get_virtual(res);
        sc->m1p = rman_get_start(res);


 rid = 0;
 sc->irq = bus_alloc_resource_any(self, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->irq == ((void*)0)) {
  printf("couldn't map interrupt\n");
  free(sc, M_MN);
  return(ENXIO);
 }

 error = bus_setup_intr(self, sc->irq, INTR_TYPE_NET, ((void*)0), mn_intr, sc, &sc->intrhand);

 if (error) {
  printf("couldn't set up irq\n");
  free(sc, M_MN);
  return(ENXIO);
 }

 u = pci_read_config(self, PCIR_COMMAND, 2);
 printf("%x\n", u);
 pci_write_config(self, PCIR_COMMAND, u | PCIM_CMD_PERRESPEN | PCIM_CMD_BUSMASTEREN, 2);



 u = pci_read_config(self, PCIR_COMMAND, 1);
 printf("%x\n", u);

 ver = pci_get_revid(self);

 sc->m32x = (struct m32xreg *) sc->m0v;
 sc->f54w = (struct f54wreg *) sc->m1v;
 sc->f54r = (struct f54rreg *) sc->m1v;


 u = mn_reset(sc);
 if (!u)
  return (0);

 printf("mn%d: Munich32X", sc->unit);
 switch (ver) {
 case 0x13:
  printf(" Rev 2.2");
  break;
 default:
  printf(" Rev 0x%x\n", ver);
 }
 printf(", Falc54");
 switch (sc->f54r->vstr) {
 case 0:
  printf(" Rev < 1.3\n");
  break;
 case 1:
  printf(" Rev 1.3\n");
  break;
 case 2:
  printf(" Rev 1.4\n");
  break;
 case 0x10:
  printf("-LH Rev 1.1\n");
  break;
 case 0x13:
  printf("-LH Rev 1.3\n");
  break;
 default:
  printf(" Rev 0x%x\n", sc->f54r->vstr);
 }

 if (ng_make_node_common(&mntypestruct, &sc->node) != 0) {
  printf("ng_make_node_common failed\n");
  return (0);
 }
 NG_NODE_SET_PRIVATE(sc->node, sc);
 sprintf(sc->nodename, "%s%d", NG_MN_NODE_TYPE, sc->unit);
 if (ng_name_node(sc->node, sc->nodename)) {
  NG_NODE_UNREF(sc->node);
  return (0);
 }

 return (0);
}
