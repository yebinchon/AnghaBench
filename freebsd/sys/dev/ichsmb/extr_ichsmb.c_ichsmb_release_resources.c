
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int device_t ;
struct TYPE_3__ {int * io_res; int io_rid; int * irq_res; int irq_rid; int * irq_handle; int dev; } ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int const,int ,int ,int *) ;
 int bus_teardown_intr (int const,int *,int *) ;

void
ichsmb_release_resources(sc_p sc)
{
 const device_t dev = sc->dev;

 if (sc->irq_handle != ((void*)0)) {
  bus_teardown_intr(dev, sc->irq_res, sc->irq_handle);
  sc->irq_handle = ((void*)0);
 }
 if (sc->irq_res != ((void*)0)) {
  bus_release_resource(dev,
      SYS_RES_IRQ, sc->irq_rid, sc->irq_res);
  sc->irq_res = ((void*)0);
 }
 if (sc->io_res != ((void*)0)) {
  bus_release_resource(dev,
      SYS_RES_IOPORT, sc->io_rid, sc->io_res);
  sc->io_res = ((void*)0);
 }
}
