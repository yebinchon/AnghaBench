
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {scalar_t__ bd_id; } ;
struct mss_chinfo {struct mss_info* parent; } ;


 scalar_t__ MD_AD1845 ;
 scalar_t__ abs (int) ;
 int ad_enter_MCE (struct mss_info*) ;
 int ad_leave_MCE (struct mss_info*) ;
 int ad_read (struct mss_info*,int) ;
 int ad_wait_init (struct mss_info*,int) ;
 int ad_write (struct mss_info*,int,int) ;

__attribute__((used)) static int
mss_speed(struct mss_chinfo *ch, int speed)
{
     struct mss_info *mss = ch->parent;
     ad_enter_MCE(mss);
     if (mss->bd_id == MD_AD1845) {
  ad_write(mss, 22, (speed >> 8) & 0xff);
  ad_write(mss, 23, speed & 0xff);

     } else {
         int i, sel = 0;
         static int speeds[] =
            {8000, 5512, 16000, 11025, 27429, 18900, 32000, 22050,
      -1, 37800, -1, 44100, 48000, 33075, 9600, 6615};

         for (i = 1; i < 16; i++)
          if (speeds[i] > 0 &&
       abs(speed-speeds[i]) < abs(speed-speeds[sel])) sel = i;
         speed = speeds[sel];
         ad_write(mss, 8, (ad_read(mss, 8) & 0xf0) | sel);
  ad_wait_init(mss, 10000);
     }
     ad_leave_MCE(mss);

     return speed;
}
