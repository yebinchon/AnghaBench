
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct xicp_softc {scalar_t__ xics_emu; } ;
typedef int device_t ;


 int H_EOI ;
 int MAX_XICP_IRQS ;
 int OPAL_INT_EOI ;
 int PCPU_GET (int ) ;
 int PSL_HV ;
 int XICP_IPI ;
 int bus_write_4 (int ,int,int) ;
 struct xicp_softc* device_get_softc (int ) ;
 int hwref ;
 int mfmsr () ;
 int opal_call (int ,int) ;
 int phyp_hcall (int ,int) ;
 int xicp_mem_for_cpu (int ) ;

__attribute__((used)) static void
xicp_eoi(device_t dev, u_int irq, void *priv)
{



 uint64_t xirr;

 if (irq == MAX_XICP_IRQS)
  irq = XICP_IPI;
 xirr = irq | (0xff << 24);
  phyp_hcall(H_EOI, xirr);
}
