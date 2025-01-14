
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct g_stripe_softc {size_t sc_ndisks; scalar_t__ sc_type; int sc_stripesize; TYPE_2__* sc_provider; TYPE_1__** sc_disks; int sc_name; int sc_geom; } ;
struct g_provider {int mediasize; size_t sectorsize; int flags; int name; } ;
typedef int off_t ;
struct TYPE_5__ {int flags; size_t sectorsize; int mediasize; int stripesize; int name; scalar_t__ stripeoffset; } ;
struct TYPE_4__ {struct g_provider* provider; } ;


 int G_PF_ACCEPT_UNMAPPED ;
 int G_PF_DIRECT_RECEIVE ;
 int G_PF_DIRECT_SEND ;
 int G_STRIPE_DEBUG (int,char*,int ) ;
 scalar_t__ G_STRIPE_TYPE_AUTOMATIC ;
 int g_error_provider (TYPE_2__*,int ) ;
 TYPE_2__* g_new_providerf (int ,char*,int ) ;
 scalar_t__ g_stripe_fast ;
 size_t g_stripe_nvalid (struct g_stripe_softc*) ;
 int g_topology_assert () ;
 size_t lcm (size_t,size_t) ;

__attribute__((used)) static void
g_stripe_check_and_run(struct g_stripe_softc *sc)
{
 struct g_provider *dp;
 off_t mediasize, ms;
 u_int no, sectorsize = 0;

 g_topology_assert();
 if (g_stripe_nvalid(sc) != sc->sc_ndisks)
  return;

 sc->sc_provider = g_new_providerf(sc->sc_geom, "stripe/%s",
     sc->sc_name);
 sc->sc_provider->flags |= G_PF_DIRECT_SEND | G_PF_DIRECT_RECEIVE;
 if (g_stripe_fast == 0)
  sc->sc_provider->flags |= G_PF_ACCEPT_UNMAPPED;



 mediasize = sc->sc_disks[0]->provider->mediasize;
 if (sc->sc_type == G_STRIPE_TYPE_AUTOMATIC)
  mediasize -= sc->sc_disks[0]->provider->sectorsize;
 mediasize -= mediasize % sc->sc_stripesize;
 sectorsize = sc->sc_disks[0]->provider->sectorsize;
 for (no = 1; no < sc->sc_ndisks; no++) {
  dp = sc->sc_disks[no]->provider;
  ms = dp->mediasize;
  if (sc->sc_type == G_STRIPE_TYPE_AUTOMATIC)
   ms -= dp->sectorsize;
  ms -= ms % sc->sc_stripesize;
  if (ms < mediasize)
   mediasize = ms;
  sectorsize = lcm(sectorsize, dp->sectorsize);


  if ((dp->flags & G_PF_ACCEPT_UNMAPPED) == 0) {
   G_STRIPE_DEBUG(1, "Cancelling unmapped "
       "because of %s.", dp->name);
   sc->sc_provider->flags &= ~G_PF_ACCEPT_UNMAPPED;
  }
 }
 sc->sc_provider->sectorsize = sectorsize;
 sc->sc_provider->mediasize = mediasize * sc->sc_ndisks;
 sc->sc_provider->stripesize = sc->sc_stripesize;
 sc->sc_provider->stripeoffset = 0;
 g_error_provider(sc->sc_provider, 0);

 G_STRIPE_DEBUG(0, "Device %s activated.", sc->sc_provider->name);
}
