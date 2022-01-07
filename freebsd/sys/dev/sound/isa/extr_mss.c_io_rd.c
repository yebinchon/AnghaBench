
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int bd_flags; int io_base; } ;


 int BD_F_MSS_OFFSET ;
 int port_rd (int ,int) ;

__attribute__((used)) static int
io_rd(struct mss_info *mss, int reg)
{
 if (mss->bd_flags & BD_F_MSS_OFFSET) reg -= 4;
 return port_rd(mss->io_base, reg);
}
