
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {int io_base; } ;


 int port_rd (int ,int) ;

__attribute__((used)) static int
sb_rd(struct sb_info *sb, int reg)
{
 return port_rd(sb->io_base, reg);
}
