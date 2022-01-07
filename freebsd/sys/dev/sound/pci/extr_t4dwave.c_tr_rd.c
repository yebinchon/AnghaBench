
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_info {int sh; int st; } ;


 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;

__attribute__((used)) static u_int32_t
tr_rd(struct tr_info *tr, int regno, int size)
{
 switch(size) {
 case 1:
  return bus_space_read_1(tr->st, tr->sh, regno);
 case 2:
  return bus_space_read_2(tr->st, tr->sh, regno);
 case 4:
  return bus_space_read_4(tr->st, tr->sh, regno);
 default:
  return 0xffffffff;
 }
}
