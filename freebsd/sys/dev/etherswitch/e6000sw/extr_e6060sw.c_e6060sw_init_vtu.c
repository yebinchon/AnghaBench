
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e6060sw_softc {scalar_t__ smi_offset; } ;
typedef int device_t ;


 scalar_t__ GLOBAL_REGISTER ;
 int MDIO_READREG (int ,scalar_t__,int ) ;
 int MDIO_WRITEREG (int ,scalar_t__,int ,int) ;
 int VTU_BUSY ;
 int VTU_DATA1_REG ;
 int VTU_DATA2_REG ;
 int VTU_FLASH ;
 int VTU_LOAD_PURGE ;
 int VTU_OPERATION ;
 int VTU_VID_REG ;
 int device_get_parent (int ) ;
 struct e6060sw_softc* device_get_softc (int ) ;

__attribute__((used)) static void
e6060sw_init_vtu(device_t dev)
{
 struct e6060sw_softc *sc;
 int busy;

 sc = device_get_softc(dev);

 MDIO_WRITEREG(device_get_parent(dev), GLOBAL_REGISTER + sc->smi_offset,
     VTU_OPERATION, VTU_BUSY | (VTU_FLASH << 12));
 while (1) {
  busy = MDIO_READREG(device_get_parent(dev),
      GLOBAL_REGISTER + sc->smi_offset, VTU_OPERATION);
  if ((busy & VTU_BUSY) == 0)
   break;
 }


 MDIO_WRITEREG(device_get_parent(dev), GLOBAL_REGISTER + sc->smi_offset,
     VTU_DATA1_REG, 0xcccc);
 MDIO_WRITEREG(device_get_parent(dev), GLOBAL_REGISTER + sc->smi_offset,
     VTU_DATA2_REG, 0x00cc);
 MDIO_WRITEREG(device_get_parent(dev), GLOBAL_REGISTER + sc->smi_offset,
     VTU_VID_REG, 0x1000 | 1);
 MDIO_WRITEREG(device_get_parent(dev), GLOBAL_REGISTER + sc->smi_offset,
     VTU_OPERATION, VTU_BUSY | (VTU_LOAD_PURGE << 12) | 1);
 while (1) {
  busy = MDIO_READREG(device_get_parent(dev),
      GLOBAL_REGISTER + sc->smi_offset, VTU_OPERATION);
  if ((busy & VTU_BUSY) == 0)
   break;
 }
}
