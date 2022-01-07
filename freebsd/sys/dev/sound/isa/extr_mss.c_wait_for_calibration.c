
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {scalar_t__ bd_id; } ;


 int DELAY (int) ;
 scalar_t__ MD_GUSMAX ;
 scalar_t__ MD_GUSPNP ;
 int MSS_IDXBUSY ;
 int ad_read (struct mss_info*,int) ;
 int ad_wait_init (struct mss_info*,int) ;
 int printf (char*) ;

__attribute__((used)) static void
wait_for_calibration(struct mss_info *mss)
{
     int t;
     t = ad_wait_init(mss, 1000000);
     if (t & MSS_IDXBUSY) printf("mss: Auto calibration timed out(1).\n");





 if (mss->bd_id == MD_GUSMAX || mss->bd_id == MD_GUSPNP) {
  for (t = 100; t > 0 && (ad_read(mss, 11) & 0x20) == 0; t--);
 } else {




    for (t = 100; t > 0 && (ad_read(mss, 11) & 0x20) == 0; t--) DELAY(100);
 }
     for (t = 100; t > 0 && ad_read(mss, 11) & 0x20; t--) DELAY(100);
}
