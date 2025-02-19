
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_softc {struct pfsync_bucket* sc_buckets; } ;
struct pfsync_bucket {int dummy; } ;


 int PFSYNC_BUCKET_LOCK (struct pfsync_bucket*) ;
 int PFSYNC_BUCKET_UNLOCK (struct pfsync_bucket*) ;
 int pfsync_buckets ;
 int pfsync_push (struct pfsync_bucket*) ;

__attribute__((used)) static void
pfsync_push_all(struct pfsync_softc *sc)
{
 int c;
 struct pfsync_bucket *b;

 for (c = 0; c < pfsync_buckets; c++) {
  b = &sc->sc_buckets[c];

  PFSYNC_BUCKET_LOCK(b);
  pfsync_push(b);
  PFSYNC_BUCKET_UNLOCK(b);
 }
}
