
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_softc {int * sc_class; } ;
typedef int device_t ;


 int ENXIO ;
 int SBUS_RCLK ;
 int SBUS_REGSHFT ;
 struct scc_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 int scc_bfe_probe (int ,int ,int ,int ) ;
 int scc_z8530_class ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
scc_sbus_probe(device_t dev)
{
 struct scc_softc *sc;
 const char *nm;

 sc = device_get_softc(dev);
 nm = ofw_bus_get_name(dev);
 if (!strcmp(nm, "zs")) {
  device_set_desc(dev, "Zilog Z8530 dual channel SCC");
  sc->sc_class = &scc_z8530_class;
  return (scc_bfe_probe(dev, SBUS_REGSHFT, SBUS_RCLK, 0));
 }
 return (ENXIO);
}
