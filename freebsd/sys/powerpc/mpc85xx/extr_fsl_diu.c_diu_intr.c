
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diu_softc {int * res; } ;


 int DIU_INT_STATUS ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
diu_intr(void *arg)
{
 struct diu_softc *sc;
 int reg;

 sc = arg;


 reg = bus_read_4(sc->res[0], DIU_INT_STATUS);
 bus_write_4(sc->res[0], DIU_INT_STATUS, reg);


}
