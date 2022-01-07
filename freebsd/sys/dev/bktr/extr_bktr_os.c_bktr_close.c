
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct bktr_softc {int dummy; } ;
typedef struct bktr_softc* bktr_ptr_t ;


 int ENXIO ;
 int FUNCTION (int ) ;

 int UNIT (int ) ;


 int bktr_devclass ;
 int dev2unit (struct cdev*) ;
 int devclass_get_device (int ,int) ;
 scalar_t__ devclass_get_softc (int ,int) ;
 int device_unbusy (int ) ;
 int tuner_close (struct bktr_softc*) ;
 int vbi_close (struct bktr_softc*) ;
 int video_close (struct bktr_softc*) ;

__attribute__((used)) static int
bktr_close( struct cdev *dev, int flags, int fmt, struct thread *td )
{
 bktr_ptr_t bktr;
 int unit;
 int result;

 unit = UNIT( dev2unit(dev) );


 bktr = (struct bktr_softc*)devclass_get_softc(bktr_devclass, unit);
 if (bktr == ((void*)0)) {

  return (ENXIO);
 }

 switch ( FUNCTION( dev2unit(dev) ) ) {
 case 128:
  result = video_close( bktr );
  break;
 case 130:
  result = tuner_close( bktr );
  break;
 case 129:
  result = vbi_close( bktr );
  break;
 default:
  return (ENXIO);
  break;
 }

 device_unbusy(devclass_get_device(bktr_devclass, unit));
 return( result );
}
