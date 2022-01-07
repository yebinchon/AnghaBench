
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct au_info {int * sh; int * st; } ;


 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;

__attribute__((used)) static u_int32_t
au_rd(struct au_info *au, int mapno, int regno, int size)
{
 switch(size) {
 case 1:
  return bus_space_read_1(au->st[mapno], au->sh[mapno], regno);
 case 2:
  return bus_space_read_2(au->st[mapno], au->sh[mapno], regno);
 case 4:
  return bus_space_read_4(au->st[mapno], au->sh[mapno], regno);
 default:
  return 0xffffffff;
 }
}
