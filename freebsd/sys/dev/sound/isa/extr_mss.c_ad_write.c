
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {int dummy; } ;


 int MSS_IDATA ;
 int MSS_IDXMASK ;
 int MSS_INDEX ;
 int ad_wait_init (struct mss_info*,int) ;
 int io_rd (struct mss_info*,int ) ;
 int io_wr (struct mss_info*,int ,int) ;

__attribute__((used)) static void
ad_write(struct mss_info *mss, int reg, u_char data)
{
     int x;


     ad_wait_init(mss, 1002000);
     x = io_rd(mss, MSS_INDEX) & ~MSS_IDXMASK;
     io_wr(mss, MSS_INDEX, (u_char)(reg & MSS_IDXMASK) | x);
     io_wr(mss, MSS_IDATA, data);
}
