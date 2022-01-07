
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {int bd_flags; } ;


 int BD_F_MCE_BIT ;
 int DEB (int ) ;
 int MSS_INDEX ;
 int MSS_MCE ;
 int MSS_TRD ;
 int ad_wait_init (struct mss_info*,int) ;
 int io_rd (struct mss_info*,int ) ;
 int io_wr (struct mss_info*,int ,int) ;
 int printf (char*) ;
 int wait_for_calibration (struct mss_info*) ;

__attribute__((used)) static void
ad_leave_MCE(struct mss_info *mss)
{
     u_char prev;

     if ((mss->bd_flags & BD_F_MCE_BIT) == 0) {
  DEB(printf("--- hey, leave_MCE: MCE bit was not set!\n"));
  return;
     }

     ad_wait_init(mss, 1000000);

     mss->bd_flags &= ~BD_F_MCE_BIT;

     prev = io_rd(mss, MSS_INDEX);
     prev &= ~MSS_TRD;
     io_wr(mss, MSS_INDEX, prev & ~MSS_MCE);
     wait_for_calibration(mss);
}
