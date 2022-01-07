
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_softc {int sc_rtlist; int sc_rthash_key; int * sc_rthash; } ;


 int BRIDGE_RTHASH_SIZE ;
 int LIST_INIT (int *) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int arc4random () ;
 int * malloc (int,int ,int ) ;

__attribute__((used)) static void
bridge_rtable_init(struct bridge_softc *sc)
{
 int i;

 sc->sc_rthash = malloc(sizeof(*sc->sc_rthash) * BRIDGE_RTHASH_SIZE,
     M_DEVBUF, M_WAITOK);

 for (i = 0; i < BRIDGE_RTHASH_SIZE; i++)
  LIST_INIT(&sc->sc_rthash[i]);

 sc->sc_rthash_key = arc4random();
 LIST_INIT(&sc->sc_rtlist);
}
