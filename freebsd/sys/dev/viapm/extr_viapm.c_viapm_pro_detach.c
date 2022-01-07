
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viapm_softc {int lock; int irqres; int irqrid; int iores; int iorid; scalar_t__ smbus; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int device_delete_child (int ,scalar_t__) ;
 scalar_t__ device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
viapm_pro_detach(device_t dev)
{
 struct viapm_softc *viapm = (struct viapm_softc *)device_get_softc(dev);

 bus_generic_detach(dev);
 if (viapm->smbus) {
  device_delete_child(dev, viapm->smbus);
 }

 bus_release_resource(dev, SYS_RES_IOPORT, viapm->iorid, viapm->iores);




 mtx_destroy(&viapm->lock);

 return 0;
}
