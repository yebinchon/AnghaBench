
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct xpcib_softc {int pdev; int bus; int domain; } ;
struct xen_pci_op {int offset; int size; int value; int devfn; int bus; int domain; int cmd; } ;
typedef int device_t ;


 int DPRINTF (char*,int,int,int,int,int,int ,int) ;
 int PCI_DEVFN (int,int) ;
 int XEN_PCI_OP_conf_write ;
 scalar_t__ device_get_softc (int ) ;
 int do_pci_op (int ,struct xen_pci_op*) ;

__attribute__((used)) static void
xpcib_write_config(device_t dev, int bus, int slot, int func,
       int reg, u_int32_t data, int bytes)
{
 struct xpcib_softc *sc = (struct xpcib_softc *)device_get_softc(dev);
 struct xen_pci_op op = {
  .cmd = XEN_PCI_OP_conf_write,
  .domain = sc->domain,
  .bus = sc->bus,
  .devfn = PCI_DEVFN(slot, func),
  .offset = reg,
  .size = bytes,
  .value = data,
 };
 int err;

 err = do_pci_op(sc->pdev, &op);

 DPRINTF("write config (b=%d, s=%d, f=%d, reg=%d, len=%d, val=%x, err=%d)\n",
   bus, slot, func, reg, bytes, data, err);
}
