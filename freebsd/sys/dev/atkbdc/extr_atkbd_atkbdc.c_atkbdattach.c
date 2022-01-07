
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int keyboard_t ;
typedef int device_t ;
struct TYPE_3__ {int * intr; int ih; } ;
typedef TYPE_1__ atkbd_softc_t ;


 int ENXIO ;
 int INTR_TYPE_TTY ;
 int KBDC_RID_KBD ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int atkbd_attach_unit (int ,int **,int ,int) ;
 int atkbdintr ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_get_resource_start (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_setup_intr (int ,int *,int ,int *,int ,int *,int *) ;
 int device_get_flags (int ) ;
 TYPE_1__* device_get_softc (int ) ;

__attribute__((used)) static int
atkbdattach(device_t dev)
{
 atkbd_softc_t *sc;
 keyboard_t *kbd;
 u_long irq;
 int flags;
 int rid;
 int error;

 sc = device_get_softc(dev);

 rid = KBDC_RID_KBD;
 irq = bus_get_resource_start(dev, SYS_RES_IRQ, rid);
 flags = device_get_flags(dev);
 error = atkbd_attach_unit(dev, &kbd, irq, flags);
 if (error)
  return error;


 sc->intr = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->intr == ((void*)0))
  return ENXIO;
 error = bus_setup_intr(dev, sc->intr, INTR_TYPE_TTY, ((void*)0), atkbdintr,
          kbd, &sc->ih);
 if (error)
  bus_release_resource(dev, SYS_RES_IRQ, rid, sc->intr);

 return error;
}
