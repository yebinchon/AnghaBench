
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int bd_flags; } ;


 int BD_F_MCE_BIT ;
 int MSS_INDEX ;
 int MSS_MCE ;
 int MSS_TRD ;
 int ad_wait_init (struct mss_info*,int) ;
 int io_rd (struct mss_info*,int ) ;
 int io_wr (struct mss_info*,int ,int) ;

__attribute__((used)) static void
ad_enter_MCE(struct mss_info *mss)
{
     int prev;

     mss->bd_flags |= BD_F_MCE_BIT;
     ad_wait_init(mss, 203000);
     prev = io_rd(mss, MSS_INDEX);
     prev &= ~MSS_TRD;
     io_wr(mss, MSS_INDEX, prev | MSS_MCE);
}
