
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_softc {int dummy; } ;
struct cfi_disk_softc {int qlock; int bioq; struct cfi_softc* parent; } ;
struct bio {int bio_cmd; } ;




 struct bio* bioq_takefirst (int *) ;
 int cfi_disk_read (struct cfi_softc*,struct bio*) ;
 int cfi_disk_write (struct cfi_softc*,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
cfi_io_proc(void *arg, int pending)
{
 struct cfi_disk_softc *sc = arg;
 struct cfi_softc *cfi = sc->parent;
 struct bio *bp;

 for (;;) {
  mtx_lock(&sc->qlock);
  bp = bioq_takefirst(&sc->bioq);
  mtx_unlock(&sc->qlock);
  if (bp == ((void*)0))
   break;

  switch (bp->bio_cmd) {
  case 129:
   cfi_disk_read(cfi, bp);
   break;
  case 128:
   cfi_disk_write(cfi, bp);
   break;
  }
 }
}
