
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sb_info {int dummy; } ;


 int DELAY (int) ;
 int SB_MIX_ADDR ;
 int SB_MIX_DATA ;
 int sb_rd (struct sb_info*,int ) ;
 int sb_wr (struct sb_info*,int ,int ) ;

__attribute__((used)) static int
sb_getmixer(struct sb_info *sb, u_int port)
{
     int val;

     sb_wr(sb, SB_MIX_ADDR, (u_char) (port & 0xff));
     DELAY(10);
     val = sb_rd(sb, SB_MIX_DATA);
     DELAY(10);

     return val;
}
