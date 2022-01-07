
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_char ;
typedef TYPE_2__* bktr_ptr_t ;
struct TYPE_10__ {int* audiomuxs; int gpio_mux_bits; scalar_t__ msp3400c; } ;
struct TYPE_11__ {int audio_mux_select; scalar_t__ audio_mute_state; scalar_t__ bt848_card; scalar_t__ audio_mux_present; scalar_t__ msp_source_selected; int msp_addr; TYPE_1__ card; scalar_t__ reverse_mute; } ;







 int BKTR_GPIO_DATA ;
 scalar_t__ CARD_IO_BCTV2 ;
 scalar_t__ FALSE ;
 int INL (TYPE_2__*,int ) ;
 int OUTL (TYPE_2__*,int ,int) ;
 scalar_t__ TRUE ;
 char* bktr_name (TYPE_2__*) ;
 int msp_autodetect (TYPE_2__*) ;
 int msp_dpl_write (TYPE_2__*,int ,int,int,int) ;
 int printf (char*,char*,int,...) ;
 int set_bctv2_audio (TYPE_2__*) ;

int
set_audio( bktr_ptr_t bktr, int cmd )
{
 u_long temp;
 volatile u_char idx;
 if ( !bktr->card.audiomuxs[ 4 ] )
  return( -1 );

 switch (cmd) {
 case 129:



  bktr->audio_mux_select = 0;


  if (bktr->reverse_mute )
        bktr->audio_mux_select = 0;
  else
      bktr->audio_mux_select = 3;

  break;
 case 132:
  bktr->audio_mux_select = 1;
  break;
 case 131:
  bktr->audio_mux_select = 2;
  break;
 case 130:
  bktr->audio_mute_state = TRUE;
  break;
 case 128:
  bktr->audio_mute_state = FALSE;
  break;
 default:
  printf("%s: audio cmd error %02x\n", bktr_name(bktr),
         cmd);
  return( -1 );
 }






        if ( bktr->bt848_card == CARD_IO_BCTV2 ) {
                set_bctv2_audio( bktr );
                return( 0 );
 }
 if ( bktr->audio_mute_state == TRUE ) {



  idx = 3;


  if (bktr->reverse_mute )
    idx = 3;
  else
    idx = 0;

 }
 else
  idx = bktr->audio_mux_select;


 temp = INL(bktr, BKTR_GPIO_DATA) & ~bktr->card.gpio_mux_bits;





 OUTL(bktr, BKTR_GPIO_DATA, temp | bktr->card.audiomuxs[ idx ]);
 if ((bktr->card.msp3400c) && (bktr->audio_mux_present == 0)) {

   if (bktr->audio_mute_state == TRUE ) {
   msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0000, 0x0000);
   } else {
   if(bktr->audio_mux_select == 0) {
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0000, 0x7300);
      if (bktr->msp_source_selected != 0) msp_autodetect(bktr);
      bktr->msp_source_selected = 0;
   }
   if(bktr->audio_mux_select == 1) {
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0000, 0x7300);
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x000d, 0x1900);
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0008, 0x0220);
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0013, 0x0000);
      bktr->msp_source_selected = 1;
   }

   if(bktr->audio_mux_select == 2) {
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0000, 0x7300);
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x000d, 0x1900);
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0008, 0x0220);
      msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0013, 0x0200);
      bktr->msp_source_selected = 2;
   }
   }
 }


 return( 0 );
}
