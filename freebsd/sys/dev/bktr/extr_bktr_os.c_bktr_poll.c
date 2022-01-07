
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct bktr_softc {int vbi_select; int vbisize; } ;
typedef struct bktr_softc* bktr_ptr_t ;


 int DECLARE_INTR_MASK (int ) ;
 int DISABLE_INTR (int ) ;
 int ENABLE_INTR (int ) ;
 int ENXIO ;
 int FUNCTION (int ) ;
 int LOCK_VBI (struct bktr_softc*) ;
 int POLLIN ;
 int POLLRDNORM ;
 int UNIT (int ) ;
 int UNLOCK_VBI (struct bktr_softc*) ;

 int bktr_devclass ;
 int dev2unit (struct cdev*) ;
 scalar_t__ devclass_get_softc (int ,int) ;
 int s ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
bktr_poll( struct cdev *dev, int events, struct thread *td)
{
 int unit;
 bktr_ptr_t bktr;
 int revents = 0;
 DECLARE_INTR_MASK(s);

 unit = UNIT(dev2unit(dev));


 bktr = (struct bktr_softc*)devclass_get_softc(bktr_devclass, unit);
 if (bktr == ((void*)0)) {

  return (ENXIO);
 }

 LOCK_VBI(bktr);
 DISABLE_INTR(s);

 if (events & (POLLIN | POLLRDNORM)) {

  switch ( FUNCTION( dev2unit(dev) ) ) {
  case 128:
   if(bktr->vbisize == 0)
    selrecord(td, &bktr->vbi_select);
   else
    revents |= events & (POLLIN | POLLRDNORM);
   break;
  }
 }

 ENABLE_INTR(s);
 UNLOCK_VBI(bktr);

 return (revents);
}
