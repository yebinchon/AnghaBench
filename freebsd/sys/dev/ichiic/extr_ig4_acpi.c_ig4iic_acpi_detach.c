
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * regs_res; int regs_rid; int * intr_res; int intr_rid; scalar_t__ platform_attached; } ;
typedef TYPE_1__ ig4iic_softc_t ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 TYPE_1__* device_get_softc (int ) ;
 int ig4iic_detach (TYPE_1__*) ;

__attribute__((used)) static int
ig4iic_acpi_detach(device_t dev)
{
 ig4iic_softc_t *sc = device_get_softc(dev);
 int error;

 if (sc->platform_attached) {
  error = ig4iic_detach(sc);
  if (error)
   return (error);
  sc->platform_attached = 0;
 }

 if (sc->intr_res) {
  bus_release_resource(dev, SYS_RES_IRQ,
         sc->intr_rid, sc->intr_res);
  sc->intr_res = ((void*)0);
 }
 if (sc->regs_res) {
  bus_release_resource(dev, SYS_RES_MEMORY,
         sc->regs_rid, sc->regs_res);
  sc->regs_res = ((void*)0);
 }

 return (0);
}
