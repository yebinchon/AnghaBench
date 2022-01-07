
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_softc {scalar_t__ sc_width; } ;
typedef int device_t ;


 int cfi_probe (int ) ;
 struct cfi_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
chipc_cfi_probe(device_t dev)
{
 struct cfi_softc *sc;
 int error;

 sc = device_get_softc(dev);

 sc->sc_width = 0;
 if ((error = cfi_probe(dev)) > 0)
  return (error);

 device_set_desc(dev, "Broadcom ChipCommon CFI");
 return (error);
}
