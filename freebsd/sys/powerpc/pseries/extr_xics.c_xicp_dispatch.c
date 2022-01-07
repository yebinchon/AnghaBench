
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct xicp_softc {int ipi_vec; int nintvecs; TYPE_1__* intvecs; scalar_t__ xics_emu; } ;
struct trapframe {int dummy; } ;
struct resource {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int irq; int vector; } ;


 int H_IPI ;
 int H_XIRR ;
 int KASSERT (int,char*) ;
 int MAX_XICP_IRQS ;
 int OPAL_INT_GET_XIRR ;
 int OPAL_INT_SET_MFRR ;
 size_t PCPU_GET (int ) ;
 int PSL_HV ;
 int XICP_IPI ;
 int bus_read_4 (struct resource*,int) ;
 int bus_write_1 (struct resource*,int,int) ;
 int* cpu_xirr ;
 int cpuid ;
 struct xicp_softc* device_get_softc (int ) ;
 int hwref ;
 int mfmsr () ;
 int opal_call (int ,...) ;
 int phyp_hcall (int ,int,int) ;
 int phyp_pft_hcall (int ,int ,int ,int ,int ,int*,int*,int*) ;
 int powerpc_dispatch_intr (int ,struct trapframe*) ;
 struct resource* xicp_mem_for_cpu (size_t) ;

__attribute__((used)) static void
xicp_dispatch(device_t dev, struct trapframe *tf)
{
 struct xicp_softc *sc;
 struct resource *regs = ((void*)0);
 uint64_t xirr, junk;
 int i;

 sc = device_get_softc(dev);
 for (;;) {

  if (regs) {
   xirr = bus_read_4(regs, 4);






  } else {

   phyp_pft_hcall(H_XIRR, 0, 0, 0, 0, &xirr, &junk, &junk);
  }
  xirr &= 0x00ffffff;

  if (xirr == 0)
   break;

  if (xirr == XICP_IPI) {
   xirr = MAX_XICP_IRQS;


   if (regs)
    bus_write_1(regs, 12, 0xff);





   else
    phyp_hcall(H_IPI, (uint64_t)(PCPU_GET(hwref)),
        0xff);
   i = sc->ipi_vec;
  } else {


   for (i = 0; i < sc->nintvecs; i++) {
    if (sc->intvecs[i].irq == xirr)
     break;
   }
   KASSERT(i < sc->nintvecs, ("Unmapped XIRR"));
  }

  powerpc_dispatch_intr(sc->intvecs[i].vector, tf);
 }
}
