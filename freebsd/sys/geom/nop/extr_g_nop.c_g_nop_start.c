
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct g_provider {struct g_geom* geom; } ;
struct g_nop_softc {scalar_t__ sc_count_until_fail; int sc_rfailprob; int sc_wfailprob; scalar_t__ sc_rdelayprob; scalar_t__ sc_delaymsec; scalar_t__ sc_wdelayprob; int sc_lock; int sc_head_delay; scalar_t__ sc_offset; int sc_error; int sc_cmd2s; int sc_cmd1s; int sc_cmd0s; int sc_flushes; int sc_physpath; int sc_getattrs; int sc_deletes; int sc_wrotebytes; int sc_writes; int sc_readbytes; int sc_reads; } ;
struct g_nop_delay {int dl_cal; struct bio* dl_bio; } ;
struct g_geom {int provider; struct g_nop_softc* softc; } ;
struct bio {int bio_cmd; struct g_provider* bio_to; scalar_t__ bio_offset; int bio_done; int bio_attribute; int bio_length; } ;
 int ENOMEM ;
 int G_NOP_LOGREQ (struct bio*,char*) ;
 int G_NOP_LOGREQLVL (int,struct bio*,char*,int ) ;
 int KASSERT (int ,char*) ;
 struct g_provider* LIST_FIRST (int *) ;
 int MSEC_2_TICKS (scalar_t__) ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct g_nop_delay*,int ) ;
 int arc4random () ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,struct g_nop_delay*) ;
 int dl_next ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_handleattr_str (struct bio*,char*,int ) ;
 int g_io_deliver (struct bio*,int ) ;
 struct g_nop_delay* g_malloc (int,int) ;
 int g_nop_kerneldump (struct bio*,struct g_nop_softc*) ;
 int g_nop_pass (struct bio*,struct g_geom*) ;
 int g_nop_pass_timeout ;
 int g_std_done ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void
g_nop_start(struct bio *bp)
{
 struct g_nop_softc *sc;
 struct g_geom *gp;
 struct g_provider *pp;
 struct bio *cbp;
 u_int failprob, delayprob, delaytime;

 failprob = delayprob = 0;

 gp = bp->bio_to->geom;
 sc = gp->softc;

 G_NOP_LOGREQ(bp, "Request received.");
 mtx_lock(&sc->sc_lock);
 if (sc->sc_count_until_fail != 0 && --sc->sc_count_until_fail == 0) {
  sc->sc_rfailprob = 100;
  sc->sc_wfailprob = 100;
 }
 switch (bp->bio_cmd) {
 case 129:
  sc->sc_reads++;
  sc->sc_readbytes += bp->bio_length;
  failprob = sc->sc_rfailprob;
  delayprob = sc->sc_rdelayprob;
  delaytime = sc->sc_delaymsec;
  break;
 case 128:
  sc->sc_writes++;
  sc->sc_wrotebytes += bp->bio_length;
  failprob = sc->sc_wfailprob;
  delayprob = sc->sc_wdelayprob;
  delaytime = sc->sc_delaymsec;
  break;
 case 132:
  sc->sc_deletes++;
  break;
 case 130:
  sc->sc_getattrs++;
  if (sc->sc_physpath &&
      g_handleattr_str(bp, "GEOM::physpath", sc->sc_physpath))
   ;
  else if (strcmp(bp->bio_attribute, "GEOM::kerneldump") == 0)
   g_nop_kerneldump(bp, sc);
  else




   break;
  mtx_unlock(&sc->sc_lock);
  return;
 case 131:
  sc->sc_flushes++;
  break;
 case 135:
  sc->sc_cmd0s++;
  break;
 case 134:
  sc->sc_cmd1s++;
  break;
 case 133:
  sc->sc_cmd2s++;
  break;
 }
 mtx_unlock(&sc->sc_lock);
 if (failprob > 0) {
  u_int rval;

  rval = arc4random() % 100;
  if (rval < failprob) {
   G_NOP_LOGREQLVL(1, bp, "Returning error=%d.", sc->sc_error);
   g_io_deliver(bp, sc->sc_error);
   return;
  }
 }

 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0)) {
  g_io_deliver(bp, ENOMEM);
  return;
 }
 cbp->bio_done = g_std_done;
 cbp->bio_offset = bp->bio_offset + sc->sc_offset;
 pp = LIST_FIRST(&gp->provider);
 KASSERT(pp != ((void*)0), ("NULL pp"));
 cbp->bio_to = pp;

 if (delayprob > 0) {
  struct g_nop_delay *gndelay;
  u_int rval;

  rval = arc4random() % 100;
  if (rval < delayprob) {
   gndelay = g_malloc(sizeof(*gndelay), M_NOWAIT | M_ZERO);
   if (gndelay != ((void*)0)) {
    callout_init(&gndelay->dl_cal, 1);

    gndelay->dl_bio = cbp;

    mtx_lock(&sc->sc_lock);
    TAILQ_INSERT_TAIL(&sc->sc_head_delay, gndelay,
        dl_next);
    mtx_unlock(&sc->sc_lock);

    callout_reset(&gndelay->dl_cal,
        MSEC_2_TICKS(delaytime), g_nop_pass_timeout,
        gndelay);
    return;
   }
  }
 }

 g_nop_pass(cbp, gp);
}
