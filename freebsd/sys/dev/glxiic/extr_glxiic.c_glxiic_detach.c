
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxiic_softc {int old_irq; int * irq_res; int irq_rid; int * irq_handler; int * gpio_res; int gpio_rid; int * smb_res; int smb_rid; int callout; int * iicbus; } ;
typedef int device_t ;


 int GLXIIC_LOCK_DESTROY (struct glxiic_softc*) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct glxiic_softc* device_get_softc (int ) ;
 int glxiic_gpio_disable (struct glxiic_softc*) ;
 int glxiic_smb_disable (struct glxiic_softc*) ;
 int glxiic_smb_map_interrupt (int ) ;

__attribute__((used)) static int
glxiic_detach(device_t dev)
{
 struct glxiic_softc *sc;
 int error;

 sc = device_get_softc(dev);

 error = bus_generic_detach(dev);
 if (error != 0)
  goto out;
 if (sc->iicbus != ((void*)0))
  error = device_delete_child(dev, sc->iicbus);

out:
 callout_drain(&sc->callout);

 if (sc->smb_res != ((void*)0)) {
  glxiic_smb_disable(sc);
  bus_release_resource(dev, SYS_RES_IOPORT, sc->smb_rid,
      sc->smb_res);
 }
 if (sc->gpio_res != ((void*)0)) {
  glxiic_gpio_disable(sc);
  bus_release_resource(dev, SYS_RES_IOPORT, sc->gpio_rid,
      sc->gpio_res);
 }
 if (sc->irq_handler != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_handler);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, sc->irq_rid,
      sc->irq_res);


 glxiic_smb_map_interrupt(sc->old_irq);

 GLXIIC_LOCK_DESTROY(sc);

 return (error);
}
