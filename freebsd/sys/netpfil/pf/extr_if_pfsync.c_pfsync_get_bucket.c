
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_softc {struct pfsync_bucket* sc_buckets; } ;
struct pfsync_bucket {int dummy; } ;
struct pf_state {int dummy; } ;


 int PF_IDHASH (struct pf_state*) ;
 int pfsync_buckets ;

__attribute__((used)) static struct pfsync_bucket*
pfsync_get_bucket(struct pfsync_softc *sc, struct pf_state *st)
{
 int c = PF_IDHASH(st) % pfsync_buckets;
 return &sc->sc_buckets[c];
}
