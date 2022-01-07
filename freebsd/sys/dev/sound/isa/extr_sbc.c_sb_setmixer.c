
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int u_char ;
struct resource {int dummy; } ;


 int DELAY (int) ;
 int SB_MIX_ADDR ;
 int SB_MIX_DATA ;
 int sb_wr (struct resource*,int ,int ) ;
 int spltty () ;
 int splx (int ) ;

__attribute__((used)) static void
sb_setmixer(struct resource *io, u_int port, u_int value)
{
     u_long flags;

     flags = spltty();
     sb_wr(io, SB_MIX_ADDR, (u_char) (port & 0xff));
     DELAY(10);
     sb_wr(io, SB_MIX_DATA, (u_char) (value & 0xff));
     DELAY(10);
     splx(flags);
}
