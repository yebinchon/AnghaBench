
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cmx_softc {int open; int dev; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;


 int CMX_LOCK (struct cmx_softc*) ;
 int CMX_UNLOCK (struct cmx_softc*) ;
 int DEBUG_printf (int ,char*,int,int ,struct thread*) ;
 int EBUSY ;
 int ENXIO ;
 int MODEBITS ;

__attribute__((used)) static int
cmx_open(struct cdev *cdev, int flags, int fmt, struct thread *td)
{
 struct cmx_softc *sc = cdev->si_drv1;

 if (sc == ((void*)0) || sc->dying)
  return ENXIO;

 CMX_LOCK(sc);
 if (sc->open) {
  CMX_UNLOCK(sc);
  return EBUSY;
 }
 sc->open = 1;
 CMX_UNLOCK(sc);

 DEBUG_printf(sc->dev, "open (flags=%b thread=%p)\n",
   flags, MODEBITS, td);
 return 0;
}
