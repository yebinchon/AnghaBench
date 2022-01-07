
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viapm_softc {int lock; scalar_t__ iores; int iorid; int iicbb; } ;
typedef int device_t ;


 int ENXIO ;
 int GPIO_DIR ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int VIAPM_INB (int ) ;
 int VIAPM_OUTB (int ,int) ;
 int VIAPM_SCL ;
 int VIAPM_SDA ;
 scalar_t__ bus_alloc_resource_any (int ,int ,int *,int) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;

__attribute__((used)) static int
viapm_586b_attach(device_t dev)
{
 struct viapm_softc *viapm = (struct viapm_softc *)device_get_softc(dev);

 mtx_init(&viapm->lock, device_get_nameunit(dev), "viapm", MTX_DEF);
 if (!(viapm->iores = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
  &viapm->iorid, RF_ACTIVE | RF_SHAREABLE))) {
  device_printf(dev, "could not allocate bus resource\n");
  goto error;
 }

 VIAPM_OUTB(GPIO_DIR, VIAPM_INB(GPIO_DIR) | VIAPM_SCL | VIAPM_SDA);


 if (!(viapm->iicbb = device_add_child(dev, "iicbb", -1)))
  goto error;

 bus_generic_attach(dev);

 return 0;

error:
 if (viapm->iores)
  bus_release_resource(dev, SYS_RES_IOPORT,
     viapm->iorid, viapm->iores);
 mtx_destroy(&viapm->lock);
 return ENXIO;
}
