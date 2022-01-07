
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct fm801_info {int sh; int st; } ;


 int bus_space_write_1 (int ,int ,int,int ) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,int ) ;

__attribute__((used)) static void
fm801_wr(struct fm801_info *fm801, int regno, u_int32_t data, int size)
{

 switch(size) {
 case 1:
  bus_space_write_1(fm801->st, fm801->sh, regno, data);
  break;
 case 2:
  bus_space_write_2(fm801->st, fm801->sh, regno, data);
  break;
 case 4:
  bus_space_write_4(fm801->st, fm801->sh, regno, data);
  break;
 }
}
