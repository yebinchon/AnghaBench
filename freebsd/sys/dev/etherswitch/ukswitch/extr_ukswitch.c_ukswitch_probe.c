
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukswitch_softc {int dummy; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int bzero (struct ukswitch_softc*,int) ;
 struct ukswitch_softc* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;

__attribute__((used)) static int
ukswitch_probe(device_t dev)
{
 struct ukswitch_softc *sc;

 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));

 device_set_desc_copy(dev, "Generic MDIO switch driver");
 return (BUS_PROBE_DEFAULT);
}
