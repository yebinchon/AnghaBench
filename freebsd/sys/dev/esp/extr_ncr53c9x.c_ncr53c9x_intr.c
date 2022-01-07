
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;


 int NCRDMA_ISINTR (struct ncr53c9x_softc*) ;
 int NCR_LOCK (struct ncr53c9x_softc*) ;
 int NCR_UNLOCK (struct ncr53c9x_softc*) ;
 int ncr53c9x_intr1 (struct ncr53c9x_softc*) ;

void
ncr53c9x_intr(void *arg)
{
 struct ncr53c9x_softc *sc = arg;

 if (!NCRDMA_ISINTR(sc))
  return;

 NCR_LOCK(sc);

 ncr53c9x_intr1(sc);

 NCR_UNLOCK(sc);
}
