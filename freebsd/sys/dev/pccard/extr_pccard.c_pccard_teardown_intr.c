
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pccard_softc {int dummy; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int * intr_handler_cookie; int * intr_handler_arg; int * intr_handler; } ;
typedef int device_t ;


 int PCCARD_CCR_OPTION ;
 int PCCARD_CCR_OPTION_IREQ_ENABLE ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 struct pccard_softc* PCCARD_SOFTC (int ) ;
 int bus_generic_teardown_intr (int ,int ,struct resource*,void*) ;
 int pccard_ccr_read (struct pccard_function*,int ) ;
 int pccard_ccr_write (struct pccard_function*,int ,int) ;
 scalar_t__ pccard_mfc (struct pccard_softc*) ;

__attribute__((used)) static int
pccard_teardown_intr(device_t dev, device_t child, struct resource *r,
    void *cookie)
{
 struct pccard_softc *sc = PCCARD_SOFTC(dev);
 struct pccard_ivar *ivar = PCCARD_IVAR(child);
 struct pccard_function *pf = ivar->pf;
 int ret;

 if (pccard_mfc(sc)) {
  pccard_ccr_write(pf, PCCARD_CCR_OPTION,
      pccard_ccr_read(pf, PCCARD_CCR_OPTION) &
      ~PCCARD_CCR_OPTION_IREQ_ENABLE);
 }
 ret = bus_generic_teardown_intr(dev, child, r, cookie);
 if (ret == 0) {
  pf->intr_handler = ((void*)0);
  pf->intr_handler_arg = ((void*)0);
  pf->intr_handler_cookie = ((void*)0);
 }

 return (ret);
}
