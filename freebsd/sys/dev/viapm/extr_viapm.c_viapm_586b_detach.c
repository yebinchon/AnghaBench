
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viapm_softc {int lock; scalar_t__ iores; int iorid; scalar_t__ iicbb; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int device_delete_child (int ,scalar_t__) ;
 scalar_t__ device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
viapm_586b_detach(device_t dev)
{
 struct viapm_softc *viapm = (struct viapm_softc *)device_get_softc(dev);

 bus_generic_detach(dev);
 if (viapm->iicbb) {
  device_delete_child(dev, viapm->iicbb);
 }

 if (viapm->iores)
  bus_release_resource(dev, SYS_RES_IOPORT, viapm->iorid,
      viapm->iores);
 mtx_destroy(&viapm->lock);

 return 0;
}
