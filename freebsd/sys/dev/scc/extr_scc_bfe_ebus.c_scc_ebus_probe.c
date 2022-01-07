
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_softc {int * sc_class; } ;
typedef int device_t ;


 int EBUS_RCLK ;
 int EBUS_REGSHFT ;
 int ENXIO ;
 struct scc_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 int scc_bfe_probe (int ,int ,int ,int ) ;
 int scc_sab82532_class ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
scc_ebus_probe(device_t dev)
{
 struct scc_softc *sc;
 const char *cmpt, *nm;

 sc = device_get_softc(dev);
 nm = ofw_bus_get_name(dev);
 cmpt = ofw_bus_get_compat(dev);
 if (cmpt == ((void*)0))
  cmpt = "";
 if (!strcmp(nm, "se") || !strcmp(nm, "FJSV,se") ||
     !strcmp(cmpt, "sab82532")) {
  device_set_desc(dev, "Siemens SAB 82532 dual channel SCC");
  sc->sc_class = &scc_sab82532_class;
  return (scc_bfe_probe(dev, EBUS_REGSHFT, EBUS_RCLK, 0));
 }
 return (ENXIO);
}
