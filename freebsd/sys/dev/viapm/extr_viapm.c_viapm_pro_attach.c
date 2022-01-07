
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct viapm_softc {int lock; scalar_t__ irqres; scalar_t__ irqrid; scalar_t__ iores; scalar_t__ iorid; int smbus; int irqih; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_ISA ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SMBHCTRL ;
 int SMBHCTRL_ENABLE ;
 int SMBSCTRL ;
 int SMBSCTRL_ENABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int VIAPM_INB (int ) ;
 int VIAPM_OUTB (int ,int) ;
 int VIAPM_PRO_REVID ;
 int VIAPM_PRO_SMBCTRL ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resource (int ,int ,scalar_t__*,int,int,int,int) ;
 scalar_t__ bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ bus_setup_intr (int ,scalar_t__,int,int *,struct viapm_softc*,int *) ;
 int device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int isab_attach (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 scalar_t__ viasmb_intr ;

__attribute__((used)) static int
viapm_pro_attach(device_t dev)
{
 struct viapm_softc *viapm = (struct viapm_softc *)device_get_softc(dev);
 u_int32_t l;

 mtx_init(&viapm->lock, device_get_nameunit(dev), "viapm", MTX_DEF);
 if (!(viapm->iores = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
  &viapm->iorid, RF_ACTIVE))) {
  device_printf(dev, "could not allocate bus space\n");
  goto error;
 }
 if (bootverbose) {
  l = pci_read_config(dev, VIAPM_PRO_REVID, 1);
  device_printf(dev, "SMBus revision code 0x%x\n", l);
 }

 viapm->smbus = device_add_child(dev, "smbus", -1);


 bus_generic_attach(dev);


 VIAPM_OUTB(SMBSCTRL, VIAPM_INB(SMBSCTRL) & ~SMBSCTRL_ENABLE);


 l = pci_read_config(dev, VIAPM_PRO_SMBCTRL, 1);
 pci_write_config(dev, VIAPM_PRO_SMBCTRL, l | 1, 1);
 return 0;

error:
 if (viapm->iores)
  bus_release_resource(dev, SYS_RES_IOPORT, viapm->iorid, viapm->iores);




 mtx_destroy(&viapm->lock);

 return ENXIO;
}
