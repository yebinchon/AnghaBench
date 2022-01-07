
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicoc_softc {int reg_shift; int mem_res; } ;
typedef int device_t ;


 int bus_write_1 (int ,int,int) ;
 struct iicoc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
iicoc_dev_write(device_t dev, int reg, int value)
{
 struct iicoc_softc *sc;

 sc = device_get_softc(dev);
 bus_write_1(sc->mem_res, reg<<sc->reg_shift, value);
}
