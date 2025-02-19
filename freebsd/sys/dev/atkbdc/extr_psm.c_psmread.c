
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct uio {scalar_t__ uio_resid; } ;
struct TYPE_2__ {scalar_t__ count; int head; int * buf; } ;
struct psm_softc {int state; TYPE_1__ queue; struct cdev* bdev; } ;
struct cdev {struct psm_softc* si_drv1; } ;
typedef int buf ;


 int EIO ;
 int EWOULDBLOCK ;
 int PCATCH ;
 int PSM_ASLP ;
 int PSM_SMALLBUFSIZE ;
 int PSM_VALID ;
 int PZERO ;
 int bcopy (int *,int *,int) ;
 int imin (scalar_t__,scalar_t__) ;
 int spltty () ;
 int splx (int) ;
 int tsleep (struct psm_softc*,int,char*,int ) ;
 int uiomove (int *,int,struct uio*) ;

__attribute__((used)) static int
psmread(struct cdev *dev, struct uio *uio, int flag)
{
 struct psm_softc *sc = dev->si_drv1;
 u_char buf[PSM_SMALLBUFSIZE];
 int error = 0;
 int s;
 int l;

 if ((sc->state & PSM_VALID) == 0)
  return (EIO);


 s = spltty();
 while (sc->queue.count <= 0) {
  if (dev != sc->bdev) {
   splx(s);
   return (EWOULDBLOCK);
  }
  sc->state |= PSM_ASLP;
  error = tsleep(sc, PZERO | PCATCH, "psmrea", 0);
  sc->state &= ~PSM_ASLP;
  if (error) {
   splx(s);
   return (error);
  } else if ((sc->state & PSM_VALID) == 0) {

   splx(s);
   return (EIO);
  }
 }
 splx(s);


 while ((sc->queue.count > 0) && (uio->uio_resid > 0)) {
  s = spltty();
  l = imin(sc->queue.count, uio->uio_resid);
  if (l > sizeof(buf))
   l = sizeof(buf);
  if (l > sizeof(sc->queue.buf) - sc->queue.head) {
   bcopy(&sc->queue.buf[sc->queue.head], &buf[0],
       sizeof(sc->queue.buf) - sc->queue.head);
   bcopy(&sc->queue.buf[0],
       &buf[sizeof(sc->queue.buf) - sc->queue.head],
       l - (sizeof(sc->queue.buf) - sc->queue.head));
  } else
   bcopy(&sc->queue.buf[sc->queue.head], &buf[0], l);
  sc->queue.count -= l;
  sc->queue.head = (sc->queue.head + l) % sizeof(sc->queue.buf);
  splx(s);
  error = uiomove(buf, l, uio);
  if (error)
   break;
 }

 return (error);
}
