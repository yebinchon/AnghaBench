
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct xive_softc {int dummy; } ;
struct xive_cpu {int queue; } ;
struct trapframe {int dummy; } ;
typedef int device_t ;


 struct xive_cpu* DPCPU_PTR (int ) ;
 scalar_t__ MAX_XIVE_IRQS ;
 int TM_QW3NSR_HE_SHIFT ;




 int XIVE_TM_CPPR ;
 int XIVE_TM_SPC_ACK ;
 struct xive_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int powerpc_dispatch_intr (scalar_t__,struct trapframe*) ;
 int xive_cpu_data ;
 scalar_t__ xive_ipi_vector ;
 int xive_read_2 (struct xive_softc*,int ) ;
 scalar_t__ xive_read_eq (int *) ;
 int xive_write_1 (struct xive_softc*,int ,int) ;

__attribute__((used)) static void
xive_dispatch(device_t dev, struct trapframe *tf)
{
 struct xive_softc *sc;
 struct xive_cpu *xive_cpud;
 uint32_t vector;
 uint16_t ack;
 uint8_t cppr, he;

 sc = device_get_softc(dev);

 for (;;) {
  ack = xive_read_2(sc, XIVE_TM_SPC_ACK);
  cppr = (ack & 0xff);

  he = ack >> TM_QW3NSR_HE_SHIFT;

  if (he == 130)
   break;
  switch (he) {
  case 130:
   goto end;
  case 128:
  case 131:
   device_printf(dev,
       "Unexpected interrupt he type: %d\n", he);
   goto end;
  case 129:
   break;
  }

  xive_cpud = DPCPU_PTR(xive_cpu_data);
  xive_write_1(sc, XIVE_TM_CPPR, cppr);

  for (;;) {
   vector = xive_read_eq(&xive_cpud->queue);

   if (vector == 0)
    break;

   if (vector == MAX_XIVE_IRQS)
    vector = xive_ipi_vector;

   powerpc_dispatch_intr(vector, tf);
  }
 }
end:
 xive_write_1(sc, XIVE_TM_CPPR, 0xff);
}
