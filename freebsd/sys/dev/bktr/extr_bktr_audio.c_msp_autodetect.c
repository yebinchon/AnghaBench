
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* bktr_ptr_t ;
struct TYPE_7__ {int msp_use_mono_source; int slow_msp_audio; int msp_addr; int msp_version_string; } ;


 int DELAY (int) ;
 char* bktr_name (TYPE_1__*) ;
 scalar_t__ bootverbose ;
 int msp_dpl_read (TYPE_1__*,int ,int,int) ;
 int msp_dpl_write (TYPE_1__*,int ,int,int,int) ;
 int msp_wake_thread (TYPE_1__*) ;
 int printf (char*,char*,...) ;
 scalar_t__ strncmp (char*,int ,int) ;

void msp_autodetect( bktr_ptr_t bktr ) {







  int auto_detect, loops;
  int stereo;


  if (strncmp("3430G", bktr->msp_version_string, 5) == 0){

    msp_dpl_write(bktr, bktr->msp_addr, 0x10, 0x0030,0x2003);
    msp_dpl_write(bktr, bktr->msp_addr, 0x10, 0x0020,0x0020);
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x000E,0x2403);
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0008,0x0320);

    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0000,0x7300);
  }




  else if ( ( (strncmp("3415D", bktr->msp_version_string, 5) == 0)
               &&(bktr->msp_use_mono_source == 1)
              )
           || (bktr->slow_msp_audio == 2) ){
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0000, 0x7300);
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x000d, 0x1900);
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0008, 0x0220);
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0013, 0x0100);
  }




  else if (bktr->slow_msp_audio == 0) {
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0000,0x7300);
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0008,0x0000);
    msp_dpl_write(bktr, bktr->msp_addr, 0x10, 0x0020,0x0001);
    msp_dpl_write(bktr, bktr->msp_addr, 0x10, 0x0021,0x0001);
  }




  else if ( bktr->slow_msp_audio == 1) {
    msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0000,0x7300);
    msp_dpl_write(bktr, bktr->msp_addr, 0x10, 0x0020,0x0001);


    loops = 10;
    do {
      DELAY(100000);
      auto_detect = msp_dpl_read(bktr, bktr->msp_addr, 0x10, 0x007e);
      loops++;
    } while (auto_detect > 0xff && loops < 50);
    if (bootverbose)printf ("%s: Result of autodetect after %dms: %d\n",
       bktr_name(bktr), loops*10, auto_detect);


    switch (auto_detect) {
    case 0:
      break;
    case 2:
      break;
    case 3:

      DELAY(20000);
      stereo = msp_dpl_read(bktr, bktr->msp_addr, 0x12, 0x0018);
      if (bootverbose)printf ("%s: Stereo reg 0x18 a: %d\n",
         bktr_name(bktr), stereo);
      DELAY(20000);
      stereo = msp_dpl_read(bktr, bktr->msp_addr, 0x12, 0x0018);
      if (bootverbose)printf ("%s: Stereo reg 0x18 b: %d\n",
         bktr_name(bktr), stereo);
      DELAY(20000);
      stereo = msp_dpl_read(bktr, bktr->msp_addr, 0x12, 0x0018);
      if (bootverbose)printf ("%s: Stereo reg 0x18 c: %d\n",
         bktr_name(bktr), stereo);
      if (stereo > 0x0100 && stereo < 0x8000) {
        msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0008,0x0020);




        msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0005,0x3f28);
      } else if (stereo > 0x8000) {
        if (bootverbose) printf ("%s: Bilingual mode detected\n",
     bktr_name(bktr));
        msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0008,0x0000);
        msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0005,0x0000);
       } else {
        msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0008,0x0030);





        msp_dpl_write(bktr, bktr->msp_addr, 0x12, 0x0005,0x3f08);
      }
      break;
    case 8:
       msp_dpl_write(bktr, bktr->msp_addr, 0x10, 0x0021,0x0001);
       break;
     case 9:
     case 10:
       break;
     default:
       if (bootverbose) printf ("%s: Unknown autodetection result value: %d\n",
    bktr_name(bktr), auto_detect);
     }

  }







}
