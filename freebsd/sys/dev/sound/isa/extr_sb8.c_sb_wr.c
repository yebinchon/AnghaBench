
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sb_info {int io_base; } ;


 int port_wr (int ,int,int ) ;

__attribute__((used)) static void
sb_wr(struct sb_info *sb, int reg, u_int8_t val)
{
 port_wr(sb->io_base, reg, val);
}
