
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct es_info {int sh; int st; } ;


 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;

__attribute__((used)) static __inline uint32_t
es_rd(struct es_info *es, int regno, int size)
{
 switch (size) {
 case 1:
  return (bus_space_read_1(es->st, es->sh, regno));
 case 2:
  return (bus_space_read_2(es->st, es->sh, regno));
 case 4:
  return (bus_space_read_4(es->st, es->sh, regno));
 default:
  return (0xFFFFFFFF);
 }
}
