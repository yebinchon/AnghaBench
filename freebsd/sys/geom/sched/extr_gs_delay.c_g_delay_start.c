
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_delay_softc {int sc_bioq; } ;
struct bio {int bio_t0; struct g_delay_softc* bio_caller1; } ;
struct TYPE_2__ {int latency; scalar_t__ bypass; } ;


 int BTFRAC_1US ;
 int bintime_addx (int *,int) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int getbinuptime (int *) ;
 TYPE_1__ me ;

__attribute__((used)) static int
g_delay_start(void *data, struct bio *bp)
{
 struct g_delay_softc *sc = data;

 if (me.bypass)
  return (-1);

 bp->bio_caller1 = sc;
 getbinuptime(&bp->bio_t0);
 bintime_addx(&bp->bio_t0, BTFRAC_1US * me.latency);







 bioq_insert_tail(&sc->sc_bioq, bp);

 return (0);
}
