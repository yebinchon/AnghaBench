
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct mss_info {int dummy; } ;


 int ad_write (struct mss_info*,int,int) ;

__attribute__((used)) static void
ad_write_cnt(struct mss_info *mss, int reg, u_short cnt)
{
     ad_write(mss, reg+1, cnt & 0xff);
     ad_write(mss, reg, cnt >> 8);
}
