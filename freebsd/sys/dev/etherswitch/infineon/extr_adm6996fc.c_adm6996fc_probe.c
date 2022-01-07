
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adm6996fc_softc {int dummy; } ;
typedef int device_t ;


 int ADM6996FC_CI0 ;
 int ADM6996FC_CI1 ;
 int ADM6996FC_PC_SHIFT ;
 int ADM6996FC_PRODUCT_CODE ;
 int ADM6996FC_READREG (int ,int ) ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ bootverbose ;
 int bzero (struct adm6996fc_softc*,int) ;
 int device_get_parent (int ) ;
 struct adm6996fc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;
 int device_set_desc_copy (int ,char*) ;

__attribute__((used)) static int
adm6996fc_probe(device_t dev)
{
 int data1, data2;
 int pc;
 struct adm6996fc_softc *sc;

 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));

 data1 = ADM6996FC_READREG(device_get_parent(dev), ADM6996FC_CI0);
 data2 = ADM6996FC_READREG(device_get_parent(dev), ADM6996FC_CI1);
 pc = ((data2 << 16) | data1) >> ADM6996FC_PC_SHIFT;
 if (bootverbose)
  device_printf(dev,"Chip Identifier Register %x %x\n", data1,
      data2);


 if (pc != ADM6996FC_PRODUCT_CODE) {
  return (ENXIO);
 }

 device_set_desc_copy(dev, "Infineon ADM6996FC/M/MX MDIO switch driver");
 return (BUS_PROBE_DEFAULT);
}
