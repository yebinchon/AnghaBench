
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cbb_softc {int flags; int mtx; int dev; int intrhand; int * sc_root_token; } ;


 int CBB_CARD_PRESENT (int) ;
 int CBB_FORCE_CV_TEST ;
 int CBB_KTHREAD_DONE ;
 int CBB_KTHREAD_RUNNING ;
 int CBB_SOCKET_FORCE ;
 int CBB_SOCKET_MASK ;
 int CBB_SOCKET_MASK_CD ;
 int CBB_SOCKET_MASK_CSTS ;
 int CBB_SOCKET_STATE ;
 int CBB_STATE_NOT_A_CARD ;
 int DEVPRINTF (int ) ;
 int DPRINTF (char*) ;
 int EWOULDBLOCK ;
 int cbb_get (struct cbb_softc*,int ) ;
 int cbb_insert (struct cbb_softc*) ;
 int cbb_removal (struct cbb_softc*) ;
 int cbb_setb (struct cbb_softc*,int ,int) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int kproc_exit (int ) ;
 int msleep (int *,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pause (char*,int) ;
 int root_mount_rel (int *) ;

void
cbb_event_thread(void *arg)
{
 struct cbb_softc *sc = arg;
 uint32_t status;
 int err;
 int not_a_card = 0;







 pause("cbbstart", hz * device_get_unit(sc->dev) * 2);
 mtx_lock(&sc->mtx);
 sc->flags |= CBB_KTHREAD_RUNNING;
 while ((sc->flags & CBB_KTHREAD_DONE) == 0) {
  mtx_unlock(&sc->mtx);
  status = cbb_get(sc, CBB_SOCKET_STATE);
  DPRINTF(("Status is 0x%x\n", status));
  if (!CBB_CARD_PRESENT(status)) {
   not_a_card = 0;
   cbb_removal(sc);
  } else if (status & CBB_STATE_NOT_A_CARD) {







   if (not_a_card++ < 10) {
    DEVPRINTF((sc->dev,
        "Not a card bit set, rescanning\n"));
    cbb_setb(sc, CBB_SOCKET_FORCE, CBB_FORCE_CV_TEST);
   } else {
    device_printf(sc->dev,
        "Can't determine card type\n");
   }
  } else {
   not_a_card = 0;
   cbb_insert(sc);
  }





  if (sc->sc_root_token) {
   root_mount_rel(sc->sc_root_token);
   sc->sc_root_token = ((void*)0);
  }
  mtx_lock(&sc->mtx);
  cbb_setb(sc, CBB_SOCKET_MASK, CBB_SOCKET_MASK_CD | CBB_SOCKET_MASK_CSTS);
  msleep(&sc->intrhand, &sc->mtx, 0, "-", 0);
  err = 0;
  while (err != EWOULDBLOCK &&
      (sc->flags & CBB_KTHREAD_DONE) == 0)
   err = msleep(&sc->intrhand, &sc->mtx, 0, "-", hz / 5);
 }
 DEVPRINTF((sc->dev, "Thread terminating\n"));
 sc->flags &= ~CBB_KTHREAD_RUNNING;
 mtx_unlock(&sc->mtx);
 kproc_exit(0);
}
