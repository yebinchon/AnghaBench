
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_flags; int mfi_dev; struct mfi_command* (* mfi_cam_start ) (struct ccb_hdr*) ;int mfi_cam_ccbq; } ;
struct mfi_command {int dummy; } ;
struct ccb_hdr {int dummy; } ;


 int MFI_FLAGS_QFRZN ;
 struct ccb_hdr* TAILQ_FIRST (int *) ;
 int device_printf (int ,char*) ;
 struct mfi_command* mfi_bio_command (struct mfi_softc*) ;
 struct mfi_command* mfi_dequeue_ready (struct mfi_softc*) ;
 scalar_t__ mfi_mapcmd (struct mfi_softc*,struct mfi_command*) ;
 int mfi_requeue_ready (struct mfi_command*) ;
 struct mfi_command* stub1 (struct ccb_hdr*) ;

void
mfi_startio(struct mfi_softc *sc)
{
 struct mfi_command *cm;
 struct ccb_hdr *ccbh;

 for (;;) {

  if (sc->mfi_flags & MFI_FLAGS_QFRZN)
   break;


  cm = mfi_dequeue_ready(sc);

  if (cm == ((void*)0)) {
   if ((ccbh = TAILQ_FIRST(&sc->mfi_cam_ccbq)) != ((void*)0))
    cm = sc->mfi_cam_start(ccbh);
  }


  if (cm == ((void*)0))
   cm = mfi_bio_command(sc);


  if (cm == ((void*)0))
   break;


  if (mfi_mapcmd(sc, cm) != 0) {
   device_printf(sc->mfi_dev, "Failed to startio\n");
   mfi_requeue_ready(cm);
   break;
  }
 }
}
