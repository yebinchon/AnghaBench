
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {scalar_t__ sis_type; } ;


 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 scalar_t__ SIS_TYPE_83815 ;
 int sis_rxfilter_ns (struct sis_softc*) ;
 int sis_rxfilter_sis (struct sis_softc*) ;

__attribute__((used)) static void
sis_rxfilter(struct sis_softc *sc)
{

 SIS_LOCK_ASSERT(sc);

 if (sc->sis_type == SIS_TYPE_83815)
  sis_rxfilter_ns(sc);
 else
  sis_rxfilter_sis(sc);
}
