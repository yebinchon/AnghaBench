
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iicoc_softc {int reg_shift; int mem_res; } ;
typedef int device_t ;


 int bus_read_1 (int ,int) ;
 struct iicoc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
iicoc_dev_read(device_t dev, int reg)
{
 uint8_t val;
 struct iicoc_softc *sc;

 sc = device_get_softc(dev);
 val = bus_read_1(sc->mem_res, reg<<sc->reg_shift);
 return (val);
}
