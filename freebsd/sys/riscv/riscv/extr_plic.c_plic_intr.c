
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct trapframe {int dummy; } ;
struct plic_softc {int dummy; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;


 int FILTER_HANDLED ;
 scalar_t__ PCPU_GET (int ) ;
 int PLIC_CLAIM (struct plic_softc*,scalar_t__) ;
 scalar_t__ RD4 (struct plic_softc*,int ) ;
 int WR4 (struct plic_softc*,int ,scalar_t__) ;
 int cpuid ;
 TYPE_1__* curthread ;
 int plic_irq_dispatch (struct plic_softc*,scalar_t__,struct trapframe*) ;

__attribute__((used)) static int
plic_intr(void *arg)
{
 struct plic_softc *sc;
 struct trapframe *tf;
 uint32_t pending;
 uint32_t cpu;

 sc = arg;
 cpu = PCPU_GET(cpuid);

 pending = RD4(sc, PLIC_CLAIM(sc, cpu));
 if (pending) {
  tf = curthread->td_intr_frame;
  plic_irq_dispatch(sc, pending, tf);
  WR4(sc, PLIC_CLAIM(sc, cpu), pending);
 }

 return (FILTER_HANDLED);
}
