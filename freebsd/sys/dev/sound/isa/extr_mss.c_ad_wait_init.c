
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int dummy; } ;


 int DELAY (int) ;
 int MSS_IDXBUSY ;
 int MSS_INDEX ;
 int io_rd (struct mss_info*,int ) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
ad_wait_init(struct mss_info *mss, int x)
{
     int arg = x, n = 0;
     for (; x > 0; x--)
  if ((n = io_rd(mss, MSS_INDEX)) & MSS_IDXBUSY) DELAY(10);
  else return n;
     printf("AD_WAIT_INIT FAILED %d 0x%02x\n", arg, n);
     return n;
}
