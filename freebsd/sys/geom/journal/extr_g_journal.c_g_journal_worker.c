
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_journal_softc {int sc_flags; scalar_t__ sc_current_count; scalar_t__ sc_flush_in_progress; scalar_t__ sc_copy_in_progress; int sc_mtx; int sc_back_queue; int sc_regular_queue; int * sc_worker; int * sc_journal_copying; int * sc_rootmount; int sc_sectorsize; int sc_mediasize; int * sc_name; struct g_geom* sc_geom; TYPE_2__* sc_dconsumer; int sc_bio_flush; TYPE_2__* sc_jconsumer; } ;
struct g_geom {int * name; } ;
struct bio {int bio_cflags; scalar_t__ bio_cmd; scalar_t__ bio_length; scalar_t__ bio_offset; } ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {int * name; } ;




 int GJF_DEVICE_CLEAN ;
 int GJF_DEVICE_DESTROY ;
 int GJF_DEVICE_SWITCH ;


 int GJ_BIO_MASK ;


 int GJ_DEBUG (int,char*,int *) ;
 int GJ_FLUSH_DATA ;
 int GJ_FLUSH_JOURNAL ;
 int GJ_LOGREQ (int,struct bio*,char*) ;
 int PRIBIO ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int curthread ;
 int g_error_provider (struct g_provider*,int ) ;
 scalar_t__ g_io_flush (TYPE_2__*) ;
 int g_journal_add_request (struct g_journal_softc*,struct bio*) ;
 int g_journal_copy_read_done (struct bio*) ;
 int g_journal_copy_send (struct g_journal_softc*) ;
 int g_journal_copy_write_done (struct bio*) ;
 int g_journal_flush (struct g_journal_softc*) ;
 int g_journal_flush_done (struct bio*) ;
 int g_journal_flush_send (struct g_journal_softc*) ;
 int g_journal_initialize (struct g_journal_softc*) ;
 int g_journal_read (struct g_journal_softc*,struct bio*,scalar_t__,scalar_t__) ;
 int g_journal_switch (struct g_journal_softc*) ;
 int g_journal_sync (struct g_journal_softc*) ;
 int g_journal_wait (struct g_journal_softc*,int ) ;
 struct g_provider* g_new_providerf (struct g_geom*,char*,int *) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int kproc_exit (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,int) ;
 int root_mount_rel (int *) ;
 int sched_prio (int ,int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;
 int time_second ;
 int wakeup (int **) ;

__attribute__((used)) static void
g_journal_worker(void *arg)
{
 struct g_journal_softc *sc;
 struct g_geom *gp;
 struct g_provider *pp;
 struct bio *bp;
 time_t last_write;
 int type;

 thread_lock(curthread);
 sched_prio(curthread, PRIBIO);
 thread_unlock(curthread);

 sc = arg;
 type = 0;

 if (sc->sc_flags & GJF_DEVICE_CLEAN) {
  GJ_DEBUG(0, "Journal %s clean.", sc->sc_name);
  g_journal_initialize(sc);
 } else {
  g_journal_sync(sc);
 }



 sc->sc_bio_flush = 0;
 if (g_io_flush(sc->sc_jconsumer) == 0) {
  sc->sc_bio_flush |= GJ_FLUSH_JOURNAL;
  GJ_DEBUG(1, "BIO_FLUSH supported by %s.",
      sc->sc_jconsumer->provider->name);
 } else {
  GJ_DEBUG(0, "BIO_FLUSH not supported by %s.",
      sc->sc_jconsumer->provider->name);
 }
 if (sc->sc_jconsumer != sc->sc_dconsumer) {
  if (g_io_flush(sc->sc_dconsumer) == 0) {
   sc->sc_bio_flush |= GJ_FLUSH_DATA;
   GJ_DEBUG(1, "BIO_FLUSH supported by %s.",
       sc->sc_dconsumer->provider->name);
  } else {
   GJ_DEBUG(0, "BIO_FLUSH not supported by %s.",
       sc->sc_dconsumer->provider->name);
  }
 }

 gp = sc->sc_geom;
 g_topology_lock();
 pp = g_new_providerf(gp, "%s.journal", sc->sc_name);
 pp->mediasize = sc->sc_mediasize;





 pp->sectorsize = sc->sc_sectorsize;
 g_error_provider(pp, 0);
 g_topology_unlock();
 last_write = time_second;

 if (sc->sc_rootmount != ((void*)0)) {
  GJ_DEBUG(1, "root_mount_rel %p", sc->sc_rootmount);
  root_mount_rel(sc->sc_rootmount);
  sc->sc_rootmount = ((void*)0);
 }

 for (;;) {

  mtx_lock(&sc->sc_mtx);
  bp = bioq_first(&sc->sc_back_queue);
  if (bp != ((void*)0))
   type = (bp->bio_cflags & GJ_BIO_MASK);
  if (bp == ((void*)0)) {
   bp = bioq_first(&sc->sc_regular_queue);
   if (bp != ((void*)0))
    type = 128;
  }
  if (bp == ((void*)0)) {
try_switch:
   if ((sc->sc_flags & GJF_DEVICE_SWITCH) ||
       (sc->sc_flags & GJF_DEVICE_DESTROY)) {
    if (sc->sc_current_count > 0) {
     mtx_unlock(&sc->sc_mtx);
     g_journal_flush(sc);
     g_journal_flush_send(sc);
     continue;
    }
    if (sc->sc_flush_in_progress > 0)
     goto sleep;
    if (sc->sc_copy_in_progress > 0)
     goto sleep;
   }
   if (sc->sc_flags & GJF_DEVICE_SWITCH) {
    mtx_unlock(&sc->sc_mtx);
    g_journal_switch(sc);
    wakeup(&sc->sc_journal_copying);
    continue;
   }
   if (sc->sc_flags & GJF_DEVICE_DESTROY) {
    GJ_DEBUG(1, "Shutting down worker "
        "thread for %s.", gp->name);
    sc->sc_worker = ((void*)0);
    wakeup(&sc->sc_worker);
    mtx_unlock(&sc->sc_mtx);
    kproc_exit(0);
   }
sleep:
   g_journal_wait(sc, last_write);
   continue;
  }




  if ((sc->sc_flags & GJF_DEVICE_SWITCH) &&
      type == 128 && bp->bio_cmd == 132) {
   GJ_LOGREQ(2, bp, "WRITE on SWITCH");
   goto try_switch;
  }
  if (type == 128)
   bioq_remove(&sc->sc_regular_queue, bp);
  else
   bioq_remove(&sc->sc_back_queue, bp);
  mtx_unlock(&sc->sc_mtx);
  switch (type) {
  case 128:

   switch (bp->bio_cmd) {
   case 133:
    g_journal_read(sc, bp, bp->bio_offset,
        bp->bio_offset + bp->bio_length);
    break;
   case 132:
    last_write = time_second;
    g_journal_add_request(sc, bp);
    g_journal_flush_send(sc);
    break;
   default:
    panic("Invalid bio_cmd (%d).", bp->bio_cmd);
   }
   break;
  case 131:
   switch (bp->bio_cmd) {
   case 133:
    if (g_journal_copy_read_done(bp))
     g_journal_copy_send(sc);
    break;
   case 132:
    g_journal_copy_write_done(bp);
    g_journal_copy_send(sc);
    break;
   default:
    panic("Invalid bio_cmd (%d).", bp->bio_cmd);
   }
   break;
  case 130:
   g_journal_flush_done(bp);
   g_journal_flush_send(sc);
   break;
  case 129:
  default:
   panic("Invalid bio (%d).", type);
  }
 }
}
