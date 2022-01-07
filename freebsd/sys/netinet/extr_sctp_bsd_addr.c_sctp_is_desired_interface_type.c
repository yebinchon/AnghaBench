
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_type; } ;
__attribute__((used)) static uint32_t
sctp_is_desired_interface_type(struct ifnet *ifn)
{
 int result;


 switch (ifn->if_type) {
 case 153:
 case 144:
 case 143:
 case 142:
 case 141:
 case 131:
 case 137:
 case 136:
 case 150:
 case 152:
 case 128:
 case 146:
 case 145:
 case 133:
 case 138:
 case 135:
 case 139:
 case 132:
 case 151:
 case 140:
 case 130:
 case 149:
 case 148:
 case 147:
 case 134:
 case 129:
  result = 1;
  break;
 default:
  result = 0;
 }

 return (result);
}
