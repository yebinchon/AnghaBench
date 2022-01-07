
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxnet3_softc {int vmx_dev; } ;
typedef int device_t ;


 int ENOTSUP ;
 int VMXNET3_BAR1_UVRS ;
 int VMXNET3_BAR1_VRRS ;
 int device_printf (int ,char*,int) ;
 int vmxnet3_read_bar1 (struct vmxnet3_softc*,int ) ;
 int vmxnet3_write_bar1 (struct vmxnet3_softc*,int ,int) ;

__attribute__((used)) static int
vmxnet3_check_version(struct vmxnet3_softc *sc)
{
 device_t dev;
 uint32_t version;

 dev = sc->vmx_dev;

 version = vmxnet3_read_bar1(sc, VMXNET3_BAR1_VRRS);
 if ((version & 0x01) == 0) {
  device_printf(dev, "unsupported hardware version %#x\n",
      version);
  return (ENOTSUP);
 }
 vmxnet3_write_bar1(sc, VMXNET3_BAR1_VRRS, 1);

 version = vmxnet3_read_bar1(sc, VMXNET3_BAR1_UVRS);
 if ((version & 0x01) == 0) {
  device_printf(dev, "unsupported UPT version %#x\n", version);
  return (ENOTSUP);
 }
 vmxnet3_write_bar1(sc, VMXNET3_BAR1_UVRS, 1);

 return (0);
}
