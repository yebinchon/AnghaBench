
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct xicp_softc {int intvecs; int ibm_set_xive; struct xicp_intvec* ipi_vec; } ;
struct xicp_intvec {int cpu; void* vector; void* irq; } ;
typedef int device_t ;
typedef int cell_t ;


 void* MAX_XICP_IRQS ;
 int OPAL_SET_XIVE ;
 int PCPU_GET (int ) ;
 int XICP_PRIORITY ;
 struct xicp_softc* device_get_softc (int ) ;
 int hwref ;
 int mb () ;
 int opal_call (int ,void*,int,int ) ;
 int panic (char*,void*,int,int) ;
 int rtas_call_method (int ,int,int,void*,int,int ,int*) ;
 scalar_t__ rtas_exists () ;
 struct xicp_intvec* xicp_setup_priv (struct xicp_softc*,void*,void**) ;
 int xicp_unmask (int ,void*,struct xicp_intvec*) ;

__attribute__((used)) static void
xicp_enable(device_t dev, u_int irq, u_int vector, void **priv)
{
 struct xicp_softc *sc;
 struct xicp_intvec *intr;
 cell_t status, cpu;

 sc = device_get_softc(dev);


 cpu = PCPU_GET(hwref);

 intr = xicp_setup_priv(sc, irq, priv);

 intr->irq = irq;
 intr->vector = vector;
 intr->cpu = cpu;
 mb();


 if (irq == MAX_XICP_IRQS) {
  sc->ipi_vec = intr - sc->intvecs;
  return;
 }

 if (rtas_exists()) {
  rtas_call_method(sc->ibm_set_xive, 3, 1, irq, cpu,
      XICP_PRIORITY, &status);
  xicp_unmask(dev, irq, intr);
 }
}
