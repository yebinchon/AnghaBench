
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bnxt_link_info {int link_speed; } ;
 int IF_Gbps (int) ;
 int IF_Mbps (int) ;

__attribute__((used)) static uint64_t
bnxt_get_baudrate(struct bnxt_link_info *link)
{
 switch (link->link_speed) {
 case 137:
  return IF_Mbps(100);
 case 134:
  return IF_Gbps(1);
 case 131:
  return IF_Gbps(2);
 case 130:
  return IF_Mbps(2500);
 case 136:
  return IF_Gbps(10);
 case 133:
  return IF_Gbps(20);
 case 132:
  return IF_Gbps(25);
 case 129:
  return IF_Gbps(40);
 case 128:
  return IF_Gbps(50);
 case 138:
  return IF_Gbps(100);
 case 135:
  return IF_Mbps(10);
 }
 return IF_Gbps(100);
}
