
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TUNER {int* pllControl; int* bandAddrs; } ;
typedef TYPE_3__* bktr_ptr_t ;
struct TYPE_10__ {scalar_t__ afc; int frequency; int radio_mode; } ;
struct TYPE_9__ {int tuner_pllAddr; struct TUNER* tuner; } ;
struct TYPE_11__ {TYPE_2__ tuner; TYPE_1__ card; } ;


 int FM_RADIO_BAND ;
 int FM_RADIO_FREQUENCY ;
 int FREQFACTOR ;
 int HIGH_BAND ;
 int LOW_BAND ;
 int MID_BAND ;
 int TBL_IF ;
 scalar_t__ TRUE ;
 size_t TUNER_MT2032 ;
 int TV_FREQUENCY ;
 char* bktr_name (TYPE_3__*) ;
 int do_afc (TYPE_3__*,int,int) ;
 int i2cWrite (TYPE_3__*,int,int,int) ;
 int mt2032_set_tv_freq (TYPE_3__*,int) ;
 int printf (char*,char*,...) ;
 struct TUNER const* tuners ;

int
tv_freq( bktr_ptr_t bktr, int frequency, int type )
{
 const struct TUNER* tuner;
 u_char addr;
 u_char control;
 u_char band;
 int N;
 int band_select = 0;




 tuner = bktr->card.tuner;
 if ( tuner == ((void*)0) )
  return( -1 );

 if (tuner == &tuners[TUNER_MT2032]) {
  mt2032_set_tv_freq(bktr, frequency);
  return 0;
 }
 if (type == TV_FREQUENCY) {




  if ( frequency < (160 * FREQFACTOR ) )
      band_select = LOW_BAND;
  else if ( frequency < (454 * FREQFACTOR ) )
      band_select = MID_BAND;
  else
      band_select = HIGH_BAND;
  N = frequency + TBL_IF;


  addr = bktr->card.tuner_pllAddr;
  control = tuner->pllControl[ band_select ];
  band = tuner->bandAddrs[ band_select ];

  if(!(band && control))
    return(-1);

  if ( frequency > bktr->tuner.frequency ) {
   i2cWrite( bktr, addr, (N>>8) & 0x7f, N & 0xff );
   i2cWrite( bktr, addr, control, band );
         }
         else {
   i2cWrite( bktr, addr, control, band );
   i2cWrite( bktr, addr, (N>>8) & 0x7f, N & 0xff );
         }
  bktr->tuner.frequency = frequency;
 }

 if ( type == FM_RADIO_FREQUENCY ) {
  band_select = FM_RADIO_BAND;
  N = (frequency + 1070)/5;


  addr = bktr->card.tuner_pllAddr;
  control = tuner->pllControl[ band_select ];
  band = tuner->bandAddrs[ band_select ];

  if(!(band && control))
    return(-1);

  band |= bktr->tuner.radio_mode;



  i2cWrite( bktr, addr, control, band );
  i2cWrite( bktr, addr, (N>>8) & 0x7f, N & 0xff );

  bktr->tuner.frequency = (N * 5) - 1070;


 }


 return( 0 );
}
