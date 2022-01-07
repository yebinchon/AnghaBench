
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {scalar_t__ chip_type; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ RTL8366RB ;
 int bzero (struct rtl8366rb_softc*,int) ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ smi_probe (int ) ;

__attribute__((used)) static int
rtl8366rb_probe(device_t dev)
{
 struct rtl8366rb_softc *sc;

 sc = device_get_softc(dev);

 bzero(sc, sizeof(*sc));
 if (smi_probe(dev) != 0)
  return (ENXIO);
 if (sc->chip_type == RTL8366RB)
  device_set_desc(dev, "RTL8366RB Ethernet Switch Controller");
 else
  device_set_desc(dev, "RTL8366SR Ethernet Switch Controller");
 return (BUS_PROBE_DEFAULT);
}
