
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nrqs; int intr_count; int nwqs; } ;
typedef TYPE_1__* POCE_SOFTC ;


 scalar_t__ IS_BE2 (TYPE_1__*) ;
 scalar_t__ is_rss_enabled (TYPE_1__*) ;

__attribute__((used)) static void
update_queues_got(POCE_SOFTC sc)
{
 if (is_rss_enabled(sc)) {
  sc->nrqs = sc->intr_count + 1;
  sc->nwqs = sc->intr_count;
 } else {
  sc->nrqs = 1;
  sc->nwqs = 1;
 }

 if (IS_BE2(sc))
  sc->nwqs = 1;
}
