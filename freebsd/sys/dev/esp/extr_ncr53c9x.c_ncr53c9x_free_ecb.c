
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int free_list; } ;
struct ncr53c9x_ecb {scalar_t__ flags; } ;


 int MA_OWNED ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct ncr53c9x_ecb*,int ) ;
 int free_links ;

__attribute__((used)) static void
ncr53c9x_free_ecb(struct ncr53c9x_softc *sc, struct ncr53c9x_ecb *ecb)
{

 NCR_LOCK_ASSERT(sc, MA_OWNED);

 ecb->flags = 0;
 TAILQ_INSERT_TAIL(&sc->free_list, ecb, free_links);
}
