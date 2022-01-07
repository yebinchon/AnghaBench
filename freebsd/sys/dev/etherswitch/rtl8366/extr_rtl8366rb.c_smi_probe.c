
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint16_t ;
struct rtl8366rb_softc {int chip_type; } ;
typedef int device_t ;


 int DPRINTF (int ,char*,char) ;
 int ENXIO ;
 int IICBUS_STOP (int ) ;
 int IIC_FASTEST ;
 int IIC_LAST_READ ;
 int IIC_WAIT ;
 int RTL8366RB ;
 int RTL8366RB_CIR ;
 char RTL8366RB_CIR_ID8366RB ;
 int RTL8366SR ;
 int RTL8366SR_CIR ;
 char RTL8366SR_CIR_ID8366SR ;
 int RTL8366_IIC_ADDR ;
 int RTL_IICBUS_READ ;
 int RTL_IICBUS_TIMEOUT ;
 int device_get_parent (int ) ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int iicbus_read (int ,char*,int,int*,int ,int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;
 int iicbus_reset (int ,int ,int,int *) ;
 int iicbus_start (int ,int,int ) ;
 int iicbus_stop (int ) ;
 int iicbus_write (int ,char*,int,int*,int ) ;

__attribute__((used)) static int
smi_probe(device_t dev)
{
 struct rtl8366rb_softc *sc;
 device_t iicbus, iicha;
 int err, i, j;
 uint16_t chipid;
 char bytes[2];
 int xferd;

 sc = device_get_softc(dev);

 iicbus = device_get_parent(dev);
 iicha = device_get_parent(iicbus);

 for (i = 0; i < 2; ++i) {
  iicbus_reset(iicbus, IIC_FASTEST, RTL8366_IIC_ADDR, ((void*)0));
  for (j=3; j--; ) {
   IICBUS_STOP(iicha);




  }
  err = iicbus_request_bus(iicbus, dev, IIC_WAIT);
  if (err != 0)
   goto out;
  err = iicbus_start(iicbus, RTL8366_IIC_ADDR | RTL_IICBUS_READ, RTL_IICBUS_TIMEOUT);
  if (err != 0)
   goto out;
  if (i == 0) {
   bytes[0] = RTL8366RB_CIR & 0xff;
   bytes[1] = (RTL8366RB_CIR >> 8) & 0xff;
  } else {
   bytes[0] = RTL8366SR_CIR & 0xff;
   bytes[1] = (RTL8366SR_CIR >> 8) & 0xff;
  }
  err = iicbus_write(iicbus, bytes, 2, &xferd, RTL_IICBUS_TIMEOUT);
  if (err != 0)
   goto out;
  err = iicbus_read(iicbus, bytes, 2, &xferd, IIC_LAST_READ, 0);
  if (err != 0)
   goto out;
  chipid = ((bytes[1] & 0xff) << 8) | (bytes[0] & 0xff);
  if (i == 0 && chipid == RTL8366RB_CIR_ID8366RB) {
   DPRINTF(dev, "chip id 0x%04x\n", chipid);
   sc->chip_type = RTL8366RB;
   err = 0;
   break;
  }
  if (i == 1 && chipid == RTL8366SR_CIR_ID8366SR) {
   DPRINTF(dev, "chip id 0x%04x\n", chipid);
   sc->chip_type = RTL8366SR;
   err = 0;
   break;
  }
  if (i == 0) {
   iicbus_stop(iicbus);
   iicbus_release_bus(iicbus, dev);
  }
 }
 if (i == 2)
  err = ENXIO;
out:
 iicbus_stop(iicbus);
 iicbus_release_bus(iicbus, dev);
 return (err == 0 ? 0 : ENXIO);
}
