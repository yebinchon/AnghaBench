
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int function_mode; int nrqs; int nwqs; int nrssqs; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int FNM_FLEX10_MODE ;
 int FNM_UMC_MODE ;
 int FNM_VNIC_MODE ;
 scalar_t__ IS_BE2 (TYPE_1__*) ;
 int MIN (int ,int ) ;
 int OCE_NCPUS ;
 scalar_t__ is_rss_enabled (TYPE_1__*) ;

__attribute__((used)) static void
setup_max_queues_want(POCE_SOFTC sc)
{

 if ((sc->function_mode & FNM_FLEX10_MODE) ||
     (sc->function_mode & FNM_UMC_MODE) ||
     (sc->function_mode & FNM_VNIC_MODE) ||
     (!is_rss_enabled(sc)) ||
     IS_BE2(sc)) {
  sc->nrqs = 1;
  sc->nwqs = 1;
 } else {
  sc->nrqs = MIN(OCE_NCPUS, sc->nrssqs) + 1;
  sc->nwqs = MIN(OCE_NCPUS, sc->nrssqs);
 }

 if (IS_BE2(sc) && is_rss_enabled(sc))
  sc->nrqs = MIN(OCE_NCPUS, sc->nrssqs) + 1;
}
