
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {int dummy; } ;


 int SGE_LOCK (struct sge_softc*) ;
 int SGE_UNLOCK (struct sge_softc*) ;
 int sge_init_locked (struct sge_softc*) ;

__attribute__((used)) static void
sge_init(void *arg)
{
 struct sge_softc *sc;

 sc = arg;
 SGE_LOCK(sc);
 sge_init_locked(sc);
 SGE_UNLOCK(sc);
}
