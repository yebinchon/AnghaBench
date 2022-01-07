
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct mss_info {int bd_flags; int io_base; } ;


 int BD_F_MSS_OFFSET ;
 int port_wr (int ,int,int ) ;

__attribute__((used)) static void
io_wr(struct mss_info *mss, int reg, u_int8_t data)
{
 if (mss->bd_flags & BD_F_MSS_OFFSET) reg -= 4;
 port_wr(mss->io_base, reg, data);
}
