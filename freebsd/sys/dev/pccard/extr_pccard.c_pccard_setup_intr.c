
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pccard_softc {int dummy; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {void* intr_handler_cookie; int * intr_handler; int * intr_filter; void* intr_handler_arg; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int PCCARD_CCR_OPTION ;
 int PCCARD_CCR_OPTION_IREQ_ENABLE ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 struct pccard_softc* PCCARD_SOFTC (int ) ;
 int bus_generic_setup_intr (int ,int ,struct resource*,int,int ,int *,struct pccard_function*,void**) ;
 int panic (char*) ;
 int pccard_ccr_read (struct pccard_function*,int ) ;
 int pccard_ccr_write (struct pccard_function*,int ,int) ;
 int pccard_filter ;
 int * pccard_intr ;
 scalar_t__ pccard_mfc (struct pccard_softc*) ;

__attribute__((used)) static int
pccard_setup_intr(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg,
    void **cookiep)
{
 struct pccard_softc *sc = PCCARD_SOFTC(dev);
 struct pccard_ivar *ivar = PCCARD_IVAR(child);
 struct pccard_function *pf = ivar->pf;
 int err;

 if (pf->intr_filter != ((void*)0) || pf->intr_handler != ((void*)0))
  panic("Only one interrupt handler per function allowed");
 pf->intr_filter = filt;
 pf->intr_handler = intr;
 pf->intr_handler_arg = arg;
 err = bus_generic_setup_intr(dev, child, irq, flags, pccard_filter,
     intr ? pccard_intr : ((void*)0), pf, cookiep);
 if (err != 0) {
  pf->intr_filter = ((void*)0);
  pf->intr_handler = ((void*)0);
  return (err);
 }
 pf->intr_handler_cookie = *cookiep;
 if (pccard_mfc(sc)) {
  pccard_ccr_write(pf, PCCARD_CCR_OPTION,
      pccard_ccr_read(pf, PCCARD_CCR_OPTION) |
      PCCARD_CCR_OPTION_IREQ_ENABLE);
 }
 return (0);
}
