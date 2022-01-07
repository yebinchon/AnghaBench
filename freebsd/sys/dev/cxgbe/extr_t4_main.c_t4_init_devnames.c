
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int * names; int dev; } ;


 int CHELSIO_T4 ;
 int chip_id (struct adapter*) ;
 int device_printf (int ,char*,int) ;
 int * devnames ;
 int nitems (int *) ;

void
t4_init_devnames(struct adapter *sc)
{
 int id;

 id = chip_id(sc);
 if (id >= CHELSIO_T4 && id - CHELSIO_T4 < nitems(devnames))
  sc->names = &devnames[id - CHELSIO_T4];
 else {
  device_printf(sc->dev, "chip id %d is not supported.\n", id);
  sc->names = ((void*)0);
 }
}
