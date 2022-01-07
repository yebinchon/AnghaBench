
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid3_softc {int sc_regular_delayed; } ;
struct bio {int dummy; } ;


 int G_RAID3_LOGREQ (int,struct bio*,char*) ;
 int bioq_insert_head (int *,struct bio*) ;

__attribute__((used)) static void
g_raid3_regular_delay(struct g_raid3_softc *sc, struct bio *bp)
{

 G_RAID3_LOGREQ(2, bp, "Delaying request.");
 bioq_insert_head(&sc->sc_regular_delayed, bp);
}
