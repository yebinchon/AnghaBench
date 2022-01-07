
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct ess_info {int dummy; } ;


 int DELAY (int) ;
 int SB_MIX_ADDR ;
 int SB_MIX_DATA ;
 int ess_rd (struct ess_info*,int ) ;
 int ess_wr (struct ess_info*,int ,int ) ;

__attribute__((used)) static int
ess_getmixer(struct ess_info *sc, u_int port)
{
     int val;
     ess_wr(sc, SB_MIX_ADDR, (u_char) (port & 0xff));
     DELAY(10);
     val = ess_rd(sc, SB_MIX_DATA);
     DELAY(10);

     return val;
}
