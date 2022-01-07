
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct bktr_softc {int flags; int bt848_card; int bt848_tuner; int reverse_mute; int slow_msp_audio; int stereo_once; int amsound; int dolby; } ;
typedef struct bktr_softc* bktr_ptr_t ;


 int Bt848_MAX_CARD ;
 int Bt848_MAX_TUNER ;
 int ENXIO ;
 int FALSE ;
 int FUNCTION (int ) ;
 int METEOR_INITALIZED ;

 int UNIT (int ) ;


 int bktr_devclass ;
 int bt848_amsound ;
 int bt848_card ;
 int bt848_dolby ;
 int bt848_reverse_mute ;
 int bt848_slow_msp_audio ;
 int bt848_stereo_once ;
 int bt848_tuner ;
 int dev2unit (struct cdev*) ;
 int devclass_get_device (int ,int) ;
 scalar_t__ devclass_get_softc (int ,int) ;
 int device_busy (int ) ;
 int device_unbusy (int ) ;
 int probeCard (struct bktr_softc*,int ,int) ;
 int tuner_open (struct bktr_softc*) ;
 int vbi_open (struct bktr_softc*) ;
 int video_open (struct bktr_softc*) ;

__attribute__((used)) static int
bktr_open( struct cdev *dev, int flags, int fmt, struct thread *td )
{
 bktr_ptr_t bktr;
 int unit;
 int result;

 unit = UNIT( dev2unit(dev) );


 bktr = (struct bktr_softc*)devclass_get_softc(bktr_devclass, unit);
 if (bktr == ((void*)0)) {

  return (ENXIO);
 }

 if (!(bktr->flags & METEOR_INITALIZED))
  return( ENXIO );


 device_busy(devclass_get_device(bktr_devclass, unit));


 if (bt848_card != -1) {
   if ((bt848_card >> 8 == unit ) &&
      ( (bt848_card & 0xff) < Bt848_MAX_CARD )) {
     if ( bktr->bt848_card != (bt848_card & 0xff) ) {
       bktr->bt848_card = (bt848_card & 0xff);
       probeCard(bktr, FALSE, unit);
     }
   }
 }

 if (bt848_tuner != -1) {
   if ((bt848_tuner >> 8 == unit ) &&
      ( (bt848_tuner & 0xff) < Bt848_MAX_TUNER )) {
     if ( bktr->bt848_tuner != (bt848_tuner & 0xff) ) {
       bktr->bt848_tuner = (bt848_tuner & 0xff);
       probeCard(bktr, FALSE, unit);
     }
   }
 }

 if (bt848_reverse_mute != -1) {
   if ((bt848_reverse_mute >> 8) == unit ) {
     bktr->reverse_mute = bt848_reverse_mute & 0xff;
   }
 }

 if (bt848_slow_msp_audio != -1) {
   if ((bt848_slow_msp_audio >> 8) == unit ) {
       bktr->slow_msp_audio = (bt848_slow_msp_audio & 0xff);
   }
 }
 switch ( FUNCTION( dev2unit(dev) ) ) {
 case 128:
  result = video_open( bktr );
  break;
 case 130:
  result = tuner_open( bktr );
  break;
 case 129:
  result = vbi_open( bktr );
  break;
 default:
  result = ENXIO;
  break;
 }


 if (result != 0)
  device_unbusy(devclass_get_device(bktr_devclass, unit));
 return( result );
}
