
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct via_info {int sh; int st; } ;


 int bus_space_write_1 (int ,int ,int,int ) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,int ) ;

__attribute__((used)) static __inline void
via_wr(struct via_info *via, int regno, uint32_t data, int size)
{

 switch (size) {
 case 1:
  bus_space_write_1(via->st, via->sh, regno, data);
  break;
 case 2:
  bus_space_write_2(via->st, via->sh, regno, data);
  break;
 case 4:
  bus_space_write_4(via->st, via->sh, regno, data);
  break;
 }
}
