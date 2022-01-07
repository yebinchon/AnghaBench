
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_6__ {int max_vlans; void* nwqs; void* nrssqs; scalar_t__ nrqs; int be3_native; } ;
typedef TYPE_1__* POCE_SOFTC ;


 scalar_t__ IS_BE (TYPE_1__*) ;
 scalar_t__ IS_SH (TYPE_1__*) ;
 int MAX_VLANFILTER_SIZE ;
 void* OCE_LEGACY_MODE_RSS ;
 void* OCE_MAX_RSS ;
 void* OCE_MAX_WQ ;
 int oce_get_profile_config (TYPE_1__*,void*) ;

__attribute__((used)) static void
oce_get_config(POCE_SOFTC sc)
{
 int rc = 0;
 uint32_t max_rss = 0;

 if ((IS_BE(sc) || IS_SH(sc)) && (!sc->be3_native))
  max_rss = OCE_LEGACY_MODE_RSS;
 else
  max_rss = OCE_MAX_RSS;

 if (!IS_BE(sc)) {
  rc = oce_get_profile_config(sc, max_rss);
  if (rc) {
   sc->nwqs = OCE_MAX_WQ;
   sc->nrssqs = max_rss;
   sc->nrqs = sc->nrssqs + 1;
  }
 }
 else {
  sc->nrssqs = max_rss;
  sc->nrqs = sc->nrssqs + 1;
  sc->nwqs = OCE_MAX_WQ;
  sc->max_vlans = MAX_VLANFILTER_SIZE;
 }
}
