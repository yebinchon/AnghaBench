
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {int io_base; } ;


 int port_rd (int ,int) ;

__attribute__((used)) static int
io_rd(struct ad1816_info *ad1816, int reg)
{
 return port_rd(ad1816->io_base, reg);
}
