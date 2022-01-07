
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocs_softc {int instance_index; int hw_war_version; int ramlog; int fc_type; int dev; int ocs_xport; int dmat; int businfo; int pci_device; int pci_vendor; } ;
typedef int device_t ;


 int ARRAY_SIZE (struct ocs_softc**) ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENOMEM ;
 int ENXIO ;
 int FC_TYPE_FCP ;
 int M_OCS ;
 int OCS_XPORT_FC ;
 int PCIC_SERIALBUS ;
 scalar_t__ PCIS_SERIALBUS_FC ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int free (int ,int ) ;
 int memset (struct ocs_softc*,int ,int) ;
 int ocs_debug_attach (struct ocs_softc*) ;
 scalar_t__ ocs_device_attach (struct ocs_softc*) ;
 int ocs_device_lock_free (struct ocs_softc*) ;
 struct ocs_softc** ocs_devices ;
 scalar_t__ ocs_intr_alloc (struct ocs_softc*) ;
 scalar_t__ ocs_map_bars (int ,struct ocs_softc*) ;
 int ocs_ramlog_free (struct ocs_softc*,int ) ;
 int ocs_release_bus (struct ocs_softc*) ;
 scalar_t__ ocs_setup_params (struct ocs_softc*) ;
 int pci_enable_busmaster (int ) ;
 int pci_enable_io (int ,int ) ;
 int pci_get_bus (int ) ;
 int pci_get_class (int ) ;
 int pci_get_device (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_get_vendor (int ) ;
 int snprintf (int ,int,char*,int,int,int) ;

__attribute__((used)) static int
ocs_pci_attach(device_t dev)
{
 struct ocs_softc *ocs;
 int instance;

 instance = device_get_unit(dev);

 ocs = (struct ocs_softc *)device_get_softc(dev);
 if (((void*)0) == ocs) {
  device_printf(dev, "cannot allocate softc\n");
  return ENOMEM;
 }
 memset(ocs, 0, sizeof(struct ocs_softc));

 if (instance < ARRAY_SIZE(ocs_devices)) {
  ocs_devices[instance] = ocs;
 } else {
  device_printf(dev, "got unexpected ocs instance number %d\n", instance);
 }

 ocs->instance_index = instance;

 ocs->dev = dev;

 pci_enable_io(dev, SYS_RES_MEMORY);
 pci_enable_busmaster(dev);

 ocs->pci_vendor = pci_get_vendor(dev);
 ocs->pci_device = pci_get_device(dev);
 snprintf(ocs->businfo, sizeof(ocs->businfo), "%02X:%02X:%02X",
  pci_get_bus(dev), pci_get_slot(dev), pci_get_function(dev));


        if (ocs_map_bars(dev, ocs)) {
  device_printf(dev, "Failed to map pci bars\n");
  goto release_bus;
        }


 if (bus_dma_tag_create(bus_get_dma_tag(dev),
    1,
    0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0),
    ((void*)0),
    BUS_SPACE_MAXSIZE,
    BUS_SPACE_UNRESTRICTED,
    BUS_SPACE_MAXSIZE,
    0,
    ((void*)0),
    ((void*)0),
    &ocs->dmat)) {
  device_printf(dev, "parent DMA tag allocation failed\n");
  goto release_bus;
 }

 if (ocs_intr_alloc(ocs)) {
  device_printf(dev, "Interrupt allocation failed\n");
  goto release_bus;
 }

 if (PCIC_SERIALBUS == pci_get_class(dev) &&
   PCIS_SERIALBUS_FC == pci_get_subclass(dev))
  ocs->ocs_xport = OCS_XPORT_FC;
 else {
  device_printf(dev, "unsupported class (%#x : %#x)\n",
    pci_get_class(dev),
    pci_get_class(dev));
  goto release_bus;
 }


 if (ocs_setup_params(ocs)) {
  device_printf(ocs->dev, "failed to setup params\n");
  goto release_bus;
 }

 if (ocs_device_attach(ocs)) {
  device_printf(ocs->dev, "failed to attach device\n");
  goto release_params;
 }

 ocs->fc_type = FC_TYPE_FCP;

 ocs_debug_attach(ocs);

 return 0;

release_params:
 ocs_ramlog_free(ocs, ocs->ramlog);
 ocs_device_lock_free(ocs);
 free(ocs->hw_war_version, M_OCS);
release_bus:
 ocs_release_bus(ocs);
 return ENXIO;
}
