
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ad1816_info {int io_base; } ;


 int port_wr (int ,int,int ) ;

__attribute__((used)) static void
io_wr(struct ad1816_info *ad1816, int reg, u_int8_t data)
{
 port_wr(ad1816->io_base, reg, data);
}
