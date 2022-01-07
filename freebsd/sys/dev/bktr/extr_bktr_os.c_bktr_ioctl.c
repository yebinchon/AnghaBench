
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct bktr_softc {scalar_t__ bigbuf; } ;
typedef scalar_t__ ioctl_cmd_t ;
typedef int caddr_t ;
typedef struct bktr_softc* bktr_ptr_t ;


 scalar_t__ BT848_GPIO_GET_DATA ;
 scalar_t__ BT848_GPIO_GET_EN ;
 scalar_t__ BT848_GPIO_SET_DATA ;
 scalar_t__ BT848_GPIO_SET_EN ;
 int ENOMEM ;
 int ENXIO ;
 int FUNCTION (int ) ;

 int UNIT (int ) ;

 int bktr_devclass ;
 int dev2unit (struct cdev*) ;
 scalar_t__ devclass_get_softc (int ,int) ;
 int tuner_ioctl (struct bktr_softc*,int,scalar_t__,int ,struct thread*) ;
 int video_ioctl (struct bktr_softc*,int,scalar_t__,int ,struct thread*) ;

__attribute__((used)) static int
bktr_ioctl( struct cdev *dev, ioctl_cmd_t cmd, caddr_t arg, int flag, struct thread *td )
{
 bktr_ptr_t bktr;
 int unit;

 unit = UNIT(dev2unit(dev));


 bktr = (struct bktr_softc*)devclass_get_softc(bktr_devclass, unit);
 if (bktr == ((void*)0)) {

  return (ENXIO);
 }







 if (bktr->bigbuf == 0)
  return( ENOMEM );


 switch ( FUNCTION( dev2unit(dev) ) ) {
 case 128:
  return( video_ioctl( bktr, unit, cmd, arg, td ) );
 case 129:
  return( tuner_ioctl( bktr, unit, cmd, arg, td ) );
 }

 return( ENXIO );
}
