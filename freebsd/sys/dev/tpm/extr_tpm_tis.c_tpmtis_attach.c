
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_sc {int interrupts; int intr_type; int transmit; int intr_cookie; int * irq_res; scalar_t__ irq_rid; int * mem_res; scalar_t__ mem_rid; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct tpm_sc*,int *) ;
 struct tpm_sc* device_get_softc (int ) ;
 int tpm20_init (struct tpm_sc*) ;
 int tpmtis_detach (int ) ;
 int tpmtis_intr_handler ;
 int tpmtis_setup_intr (struct tpm_sc*) ;
 int tpmtis_transmit ;

__attribute__((used)) static int
tpmtis_attach(device_t dev)
{
 struct tpm_sc *sc;
 int result;

 sc = device_get_softc(dev);
 sc->dev = dev;

 sc->mem_rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->mem_rid,
      RF_ACTIVE);
 if (sc->mem_res == ((void*)0))
  return (ENXIO);

 sc->irq_rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irq_rid,
      RF_ACTIVE | RF_SHAREABLE);
 if (sc->irq_res != ((void*)0)) {
  if (bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
      ((void*)0), tpmtis_intr_handler, sc, &sc->intr_cookie))
   sc->interrupts = 0;
  else
   sc->interrupts = tpmtis_setup_intr(sc);
 } else {
  sc->interrupts = 0;
 }

 sc->intr_type = -1;

 sc->transmit = tpmtis_transmit;

 result = tpm20_init(sc);
 if (result != 0)
  tpmtis_detach(dev);

 return (result);
}
