
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_softc {int jme_flags; int jme_ostats; int jme_stats; } ;
struct jme_hw_stats {int dummy; } ;


 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int JME_FLAG_HWMIB ;
 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int JME_STATCSR ;
 int bcopy (int *,int *,int) ;

__attribute__((used)) static void
jme_stats_save(struct jme_softc *sc)
{

 JME_LOCK_ASSERT(sc);

 if ((sc->jme_flags & JME_FLAG_HWMIB) == 0)
  return;

 bcopy(&sc->jme_stats, &sc->jme_ostats, sizeof(struct jme_hw_stats));

 CSR_WRITE_4(sc, JME_STATCSR, 0xFFFFFFFF);
}
