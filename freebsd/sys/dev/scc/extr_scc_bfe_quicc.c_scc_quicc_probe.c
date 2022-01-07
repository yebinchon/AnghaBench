
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_softc {int * sc_class; } ;
typedef int device_t ;


 int BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int ENXIO ;
 uintptr_t QUICC_DEVTYPE_SCC ;
 int QUICC_IVAR_BRGCLK ;
 int QUICC_IVAR_DEVTYPE ;
 int device_get_parent (int ) ;
 struct scc_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int scc_bfe_probe (int ,int ,uintptr_t,int ) ;
 int scc_quicc_class ;

__attribute__((used)) static int
scc_quicc_probe(device_t dev)
{
 device_t parent;
 struct scc_softc *sc;
 uintptr_t devtype, rclk;
 int error;

 parent = device_get_parent(dev);

 error = BUS_READ_IVAR(parent, dev, QUICC_IVAR_DEVTYPE, &devtype);
 if (error)
  return (error);
 if (devtype != QUICC_DEVTYPE_SCC)
  return (ENXIO);

 device_set_desc(dev, "QUICC quad channel SCC");

 sc = device_get_softc(dev);
 sc->sc_class = &scc_quicc_class;
 if (BUS_READ_IVAR(parent, dev, QUICC_IVAR_BRGCLK, &rclk))
  rclk = 0;
 return (scc_bfe_probe(dev, 0, rclk, 0));
}
