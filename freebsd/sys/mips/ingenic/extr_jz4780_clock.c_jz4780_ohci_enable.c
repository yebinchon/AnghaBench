
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_clock_softc {int dummy; } ;
typedef int * device_t ;


 int CGU_LOCK (struct jz4780_clock_softc*) ;
 int CGU_UNLOCK (struct jz4780_clock_softc*) ;
 int CSR_READ_4 (struct jz4780_clock_softc*,int ) ;
 int CSR_WRITE_4 (struct jz4780_clock_softc*,int ,int ) ;
 int JZ_OPCR ;
 int OPCR_SPENDN1 ;
 int * devclass_get_device (int ,int ) ;
 struct jz4780_clock_softc* device_get_softc (int *) ;
 int jz4780_clock_devclass ;

int
jz4780_ohci_enable(void)
{
 device_t dev;
 struct jz4780_clock_softc *sc;
 uint32_t reg;

 dev = devclass_get_device(jz4780_clock_devclass, 0);
 if (dev == ((void*)0))
  return (-1);

 sc = device_get_softc(dev);
 CGU_LOCK(sc);


 reg = CSR_READ_4(sc, JZ_OPCR);
 reg |= OPCR_SPENDN1;
 CSR_WRITE_4(sc, JZ_OPCR, reg);

 CGU_UNLOCK(sc);
 return (0);
}
