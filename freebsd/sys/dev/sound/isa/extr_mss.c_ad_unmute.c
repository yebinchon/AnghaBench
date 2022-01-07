
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int dummy; } ;


 int I6_MUTE ;
 int ad_read (struct mss_info*,int) ;
 int ad_write (struct mss_info*,int,int) ;

__attribute__((used)) static void
ad_unmute(struct mss_info *mss)
{
     ad_write(mss, 6, ad_read(mss, 6) & ~I6_MUTE);
     ad_write(mss, 7, ad_read(mss, 7) & ~I6_MUTE);
}
