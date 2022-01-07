
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_softc {scalar_t__ sc_enabled_count; int dev; } ;
struct pccard_function {int * cfe; int ccr_mask; int pf_ccr_offset; int pf_ccr_window; int number; } ;
typedef int device_t ;


 int DEVPRINTF (int ) ;
 int ENXIO ;
 struct pccard_softc* PCCARD_SOFTC (int ) ;
 int POWER_ENABLE_SOCKET (int ,int ) ;
 scalar_t__ device_attach (int ) ;
 int device_get_parent (int ) ;
 int device_probe (int ) ;
 int pccard_ccr_read (struct pccard_function*,int) ;
 int pccard_function_disable (struct pccard_function*) ;
 scalar_t__ pccard_function_enable (struct pccard_function*) ;
 int pccard_function_free (struct pccard_function*) ;
 int pccard_function_init (struct pccard_function*,int) ;
 scalar_t__ pccard_set_default_descr (int ) ;

__attribute__((used)) static int
pccard_probe_and_attach_child(device_t dev, device_t child,
    struct pccard_function *pf)
{
 struct pccard_softc *sc = PCCARD_SOFTC(dev);
 int error;
 error = device_probe(child);
 if (error != 0)
  goto out;
 pccard_function_init(pf, -1);
 if (sc->sc_enabled_count == 0)
  POWER_ENABLE_SOCKET(device_get_parent(dev), dev);
 if (pccard_function_enable(pf) == 0 &&
     pccard_set_default_descr(child) == 0 &&
     device_attach(child) == 0) {
  DEVPRINTF((sc->dev, "function %d CCR at %d offset %#x "
      "mask %#x: %#x %#x %#x %#x, %#x %#x %#x %#x, %#x\n",
      pf->number, pf->pf_ccr_window, pf->pf_ccr_offset,
      pf->ccr_mask, pccard_ccr_read(pf, 0x00),
      pccard_ccr_read(pf, 0x02), pccard_ccr_read(pf, 0x04),
      pccard_ccr_read(pf, 0x06), pccard_ccr_read(pf, 0x0A),
      pccard_ccr_read(pf, 0x0C), pccard_ccr_read(pf, 0x0E),
      pccard_ccr_read(pf, 0x10), pccard_ccr_read(pf, 0x12)));
  return (0);
 }
 error = ENXIO;
out:;





 if (pf->cfe != ((void*)0))
  pccard_function_disable(pf);
 pf->cfe = ((void*)0);
 pccard_function_free(pf);
 return error;
}
