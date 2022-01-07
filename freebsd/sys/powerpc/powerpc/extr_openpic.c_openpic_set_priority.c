
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct openpic_softc {scalar_t__ sc_dev; } ;


 int OPENPIC_PCPU_TPR (int ) ;
 int OPENPIC_TPR_MASK ;
 int PCPU_GET (int ) ;
 int cpuid ;
 int openpic_read (struct openpic_softc*,int ) ;
 int openpic_write (struct openpic_softc*,int ,int) ;
 scalar_t__ root_pic ;
 int sched_pin () ;
 int sched_unpin () ;

__attribute__((used)) static __inline void
openpic_set_priority(struct openpic_softc *sc, int pri)
{
 u_int tpr;
 uint32_t x;

 sched_pin();
 tpr = OPENPIC_PCPU_TPR((sc->sc_dev == root_pic) ? PCPU_GET(cpuid) : 0);
 x = openpic_read(sc, tpr);
 x &= ~OPENPIC_TPR_MASK;
 x |= pri;
 openpic_write(sc, tpr, x);
 sched_unpin();
}
