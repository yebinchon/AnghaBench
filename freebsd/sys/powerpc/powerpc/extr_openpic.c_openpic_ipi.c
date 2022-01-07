
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;
struct openpic_softc {int dummy; } ;
typedef scalar_t__ device_t ;


 int KASSERT (int,char*) ;
 int OPENPIC_PCPU_IPI_DISPATCH (int ,int ) ;
 int PCPU_GET (int ) ;
 int cpuid ;
 struct openpic_softc* device_get_softc (scalar_t__) ;
 int openpic_write (struct openpic_softc*,int ,unsigned int) ;
 scalar_t__ root_pic ;
 int sched_pin () ;
 int sched_unpin () ;

void
openpic_ipi(device_t dev, u_int cpu)
{
 struct openpic_softc *sc;

 KASSERT(dev == root_pic, ("Cannot send IPIs from non-root OpenPIC"));

 sc = device_get_softc(dev);
 sched_pin();
 openpic_write(sc, OPENPIC_PCPU_IPI_DISPATCH(PCPU_GET(cpuid), 0),
     1u << cpu);
 sched_unpin();
}
