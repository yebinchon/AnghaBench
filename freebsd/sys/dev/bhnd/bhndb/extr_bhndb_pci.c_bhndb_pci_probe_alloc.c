
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_erom_io {int dummy; } ;
struct TYPE_2__ {struct bhnd_erom_io eio; } ;
struct bhndb_pci_probe {void* dev; int m_valid; int * hr; int * cores; int * erom; int hostb_core; int ncores; int cid; int * erom_class; TYPE_1__ erom_io; int * m_res; int * m_win; void* pci_dev; } ;
struct bhndb_hwcfg {int dummy; } ;
struct bhnd_chipid {int dummy; } ;
typedef void* device_t ;
typedef int bhnd_devclass_t ;


 struct bhnd_chipid* BHNDB_BUS_GET_CHIPID (void*,void*) ;
 struct bhndb_hwcfg* BHNDB_BUS_GET_GENERIC_HWCFG (void*,void*) ;
 int BHND_DEFAULT_CHIPC_ADDR ;
 int BHND_DEFAULT_CORE_SIZE ;
 int ENXIO ;
 int KASSERT (int ,char*) ;
 int M_BHND ;
 int M_WAITOK ;
 int M_ZERO ;
 int * bhnd_erom_alloc (int *,int *,struct bhnd_erom_io*) ;
 int bhnd_erom_free (int *) ;
 int bhnd_erom_free_core_table (int *,int *) ;
 int bhnd_erom_get_core_table (int *,int **,int *) ;
 int bhnd_erom_io_fini (struct bhnd_erom_io*) ;
 int bhnd_erom_io_map (struct bhnd_erom_io*,int ,int ) ;
 int * bhnd_erom_probe_driver_classes (int ,struct bhnd_erom_io*,struct bhnd_chipid const*,int *) ;
 int bhndb_alloc_host_resources (int **,void*,void*,struct bhndb_hwcfg const*) ;
 int bhndb_find_hostb_core (int *,int ,int ,int *) ;
 int bhndb_pci_eio_init (TYPE_1__*,struct bhndb_pci_probe*) ;
 int bhndb_release_host_resources (int *) ;
 int device_get_devclass (void*) ;
 void* device_get_parent (void*) ;
 int device_printf (void*,char*,...) ;
 int free (struct bhndb_pci_probe*,int ) ;
 struct bhndb_pci_probe* malloc (int,int ,int) ;

__attribute__((used)) static int
bhndb_pci_probe_alloc(struct bhndb_pci_probe **probe, device_t dev,
    bhnd_devclass_t hostb_devclass)
{
 struct bhndb_pci_probe *p;
 struct bhnd_erom_io *eio;
 const struct bhndb_hwcfg *hwcfg;
 const struct bhnd_chipid *hint;
 device_t parent_dev;
 int error;

 parent_dev = device_get_parent(dev);
 eio = ((void*)0);

 p = malloc(sizeof(*p), M_BHND, M_ZERO|M_WAITOK);
 p->dev = dev;
 p->pci_dev = parent_dev;




 p->m_win = ((void*)0);
 p->m_res = ((void*)0);
 p->m_valid = 0;

 bhndb_pci_eio_init(&p->erom_io, p);
 eio = &p->erom_io.eio;


 hwcfg = BHNDB_BUS_GET_GENERIC_HWCFG(parent_dev, dev);
 hint = BHNDB_BUS_GET_CHIPID(parent_dev, dev);


 error = bhndb_alloc_host_resources(&p->hr, dev, parent_dev, hwcfg);
 if (error) {
  p->hr = ((void*)0);
  goto failed;
 }


 error = bhnd_erom_io_map(eio, BHND_DEFAULT_CHIPC_ADDR,
     BHND_DEFAULT_CORE_SIZE);
 if (error)
  goto failed;


 p->erom_class = bhnd_erom_probe_driver_classes(
     device_get_devclass(dev), eio, hint, &p->cid);
 if (p->erom_class == ((void*)0)) {
  device_printf(dev, "device enumeration unsupported; no "
      "compatible driver found\n");

  error = ENXIO;
  goto failed;
 }


 p->erom = bhnd_erom_alloc(p->erom_class, &p->cid, eio);
 if (p->erom == ((void*)0)) {
  device_printf(dev, "failed to allocate device enumeration "
      "table parser\n");
  error = ENXIO;
  goto failed;
 }


 eio = ((void*)0);


 error = bhnd_erom_get_core_table(p->erom, &p->cores, &p->ncores);
 if (error) {
  device_printf(p->dev, "error fetching core table: %d\n",
      error);

  p->cores = ((void*)0);
  goto failed;
 }


 error = bhndb_find_hostb_core(p->cores, p->ncores, hostb_devclass,
     &p->hostb_core);
 if (error) {
  device_printf(dev, "failed to identify the host bridge "
      "core: %d\n", error);

  goto failed;
 }

 *probe = p;
 return (0);

failed:
 if (eio != ((void*)0)) {
  KASSERT(p->erom == ((void*)0), ("I/O instance will be freed by "
      "its owning parser"));

  bhnd_erom_io_fini(eio);
 }

 if (p->erom != ((void*)0)) {
  if (p->cores != ((void*)0))
   bhnd_erom_free_core_table(p->erom, p->cores);

  bhnd_erom_free(p->erom);
 } else {
  KASSERT(p->cores == ((void*)0), ("cannot free erom-owned core table "
      "without erom reference"));
 }

 if (p->hr != ((void*)0))
  bhndb_release_host_resources(p->hr);

 free(p, M_BHND);

 return (error);
}
