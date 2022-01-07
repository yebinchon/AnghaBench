
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct cdev {int dummy; } ;
struct bktr_softc {int dummy; } ;
typedef struct bktr_softc* bktr_ptr_t ;


 int ENXIO ;
 int FUNCTION (int ) ;
 int UNIT (int ) ;


 int bktr_devclass ;
 int dev2unit (struct cdev*) ;
 scalar_t__ devclass_get_softc (int ,int) ;
 int vbi_read (struct bktr_softc*,struct uio*,int) ;
 int video_read (struct bktr_softc*,int,struct cdev*,struct uio*) ;

__attribute__((used)) static int
bktr_read( struct cdev *dev, struct uio *uio, int ioflag )
{
 bktr_ptr_t bktr;
 int unit;

 unit = UNIT(dev2unit(dev));


 bktr = (struct bktr_softc*)devclass_get_softc(bktr_devclass, unit);
 if (bktr == ((void*)0)) {

  return (ENXIO);
 }

 switch ( FUNCTION( dev2unit(dev) ) ) {
 case 128:
  return( video_read( bktr, unit, dev, uio ) );
 case 129:
  return( vbi_read( bktr, uio, ioflag ) );
 }
        return( ENXIO );
}
