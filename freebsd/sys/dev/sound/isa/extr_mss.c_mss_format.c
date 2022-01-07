
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mss_info {int dummy; } ;
struct mss_chinfo {int fmt; struct mss_info* parent; } ;



 int AFMT_CHANNEL (int) ;
 int AFMT_ENCODING (int) ;





 int ad_enter_MCE (struct mss_info*) ;
 int ad_leave_MCE (struct mss_info*) ;
 int ad_read (struct mss_info*,int) ;
 int ad_wait_init (struct mss_info*,int) ;
 int ad_write (struct mss_info*,int,int) ;

__attribute__((used)) static int
mss_format(struct mss_chinfo *ch, u_int32_t format)
{
     struct mss_info *mss = ch->parent;
     int i, arg = AFMT_ENCODING(format);
     static int fmts[] =
         {128, 131, 130, 133,
  -1, 132, 129, -1};

 ch->fmt = format;
     for (i = 0; i < 8; i++) if (arg == fmts[i]) break;
     arg = i << 1;
     if (AFMT_CHANNEL(format) > 1) arg |= 1;
     arg <<= 4;
     ad_enter_MCE(mss);
     ad_write(mss, 8, (ad_read(mss, 8) & 0x0f) | arg);
 ad_wait_init(mss, 10000);
     if (ad_read(mss, 12) & 0x40) {
  ad_write(mss, 28, arg);
  ad_wait_init(mss, 10000);
 }
     ad_leave_MCE(mss);
     return format;
}
