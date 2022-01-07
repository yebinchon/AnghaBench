
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhndb_pci_softc {scalar_t__ msi_count; int parent; int dev; int * isrc; int * set_regwin; scalar_t__ pci_quirks; int pci_devclass; } ;
struct bhnd_core_info {int dummy; } ;
struct bhnd_chipid {scalar_t__ chip_type; } ;
struct bhndb_pci_probe {struct bhnd_core_info hostb_core; int * erom_class; struct bhnd_chipid cid; } ;
typedef int device_t ;
typedef int bhnd_erom_class_t ;


 int BHNDB_PCI_LOCK_DESTROY (struct bhndb_pci_softc*) ;
 int BHNDB_PCI_LOCK_INIT (struct bhndb_pci_softc*) ;
 scalar_t__ BHND_CHIPTYPE_SIBA ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int RM_MAX_END ;
 int * bhndb_alloc_intr_isrc (int ,int,int ,int ,int,int) ;
 int bhndb_attach (int ,struct bhnd_chipid*,struct bhnd_core_info*,int ,struct bhnd_core_info*,int *) ;
 int bhndb_disable_pci_clocks (int ) ;
 int bhndb_enable_pci_clocks (int ) ;
 int bhndb_expected_pci_devclass (int ) ;
 int bhndb_free_intr_isrc (int *) ;
 int bhndb_pci_add_children (struct bhndb_pci_softc*) ;
 scalar_t__ bhndb_pci_alloc_msi (struct bhndb_pci_softc*,scalar_t__*) ;
 int * bhndb_pci_compat_setregwin ;
 int * bhndb_pci_fast_setregwin ;
 scalar_t__ bhndb_pci_get_core_quirks (struct bhnd_chipid*,struct bhnd_core_info*) ;
 int bhndb_pci_probe_alloc (struct bhndb_pci_probe**,int ,int ) ;
 int bhndb_pci_probe_copy_core_table (struct bhndb_pci_probe*,struct bhnd_core_info**,int *) ;
 int bhndb_pci_probe_free (struct bhndb_pci_probe*) ;
 int bhndb_pci_probe_free_core_table (struct bhnd_core_info*) ;
 int bhndb_pci_srsh_pi_war (struct bhndb_pci_softc*,struct bhndb_pci_probe*) ;
 int bus_generic_attach (int ) ;
 int device_delete_children (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct bhndb_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int pci_disable_busmaster (int ) ;
 int pci_enable_busmaster (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
bhndb_pci_attach(device_t dev)
{
 struct bhndb_pci_softc *sc;
 struct bhnd_chipid cid;
 struct bhnd_core_info *cores, hostb_core;
 bhnd_erom_class_t *erom_class;
 struct bhndb_pci_probe *probe;
 u_int ncores;
 int irq_rid;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->parent = device_get_parent(dev);
 sc->pci_devclass = bhndb_expected_pci_devclass(dev);
 sc->pci_quirks = 0;
 sc->set_regwin = ((void*)0);

 BHNDB_PCI_LOCK_INIT(sc);

 probe = ((void*)0);
 cores = ((void*)0);


 pci_enable_busmaster(sc->parent);


 if ((error = bhndb_enable_pci_clocks(sc->dev)))
  goto cleanup;


 error = bhndb_pci_probe_alloc(&probe, dev, sc->pci_devclass);
 if (error)
  goto cleanup;

 sc->pci_quirks = bhndb_pci_get_core_quirks(&probe->cid,
     &probe->hostb_core);


 if (probe->cid.chip_type == BHND_CHIPTYPE_SIBA) {
  sc->set_regwin = bhndb_pci_compat_setregwin;
 } else {
  sc->set_regwin = bhndb_pci_fast_setregwin;
 }







 if ((error = bhndb_pci_srsh_pi_war(sc, probe)))
  goto cleanup;


 if (bhndb_pci_alloc_msi(sc, &sc->msi_count) == 0) {

  irq_rid = 1;

  device_printf(dev, "Using MSI interrupts on %s\n",
      device_get_nameunit(sc->parent));
 } else {
  sc->msi_count = 0;
  irq_rid = 0;

  device_printf(dev, "Using INTx interrupts on %s\n",
      device_get_nameunit(sc->parent));
 }

 sc->isrc = bhndb_alloc_intr_isrc(sc->parent, irq_rid, 0, RM_MAX_END, 1,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->isrc == ((void*)0)) {
  device_printf(sc->dev, "failed to allocate interrupt "
      "resource\n");
  error = ENXIO;
  goto cleanup;
 }
 cid = probe->cid;
 erom_class = probe->erom_class;
 hostb_core = probe->hostb_core;

 error = bhndb_pci_probe_copy_core_table(probe, &cores, &ncores);
 if (error) {
  cores = ((void*)0);
  goto cleanup;
 }

 bhndb_pci_probe_free(probe);
 probe = ((void*)0);


 error = bhndb_attach(dev, &cid, cores, ncores, &hostb_core, erom_class);
 if (error)
  goto cleanup;


 if ((error = bhndb_pci_add_children(sc)))
  goto cleanup;


 if ((error = bus_generic_attach(dev)))
  goto cleanup;

 bhndb_pci_probe_free_core_table(cores);

 return (0);

cleanup:
 device_delete_children(dev);

 if (sc->isrc != ((void*)0))
  bhndb_free_intr_isrc(sc->isrc);

 if (sc->msi_count > 0)
  pci_release_msi(sc->parent);

 if (cores != ((void*)0))
  bhndb_pci_probe_free_core_table(cores);

 if (probe != ((void*)0))
  bhndb_pci_probe_free(probe);

 bhndb_disable_pci_clocks(sc->dev);

 pci_disable_busmaster(sc->parent);

 BHNDB_PCI_LOCK_DESTROY(sc);

 return (error);
}
