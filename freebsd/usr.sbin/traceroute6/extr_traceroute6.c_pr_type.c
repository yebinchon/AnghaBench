
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
const char *
pr_type(int t0)
{
 u_char t = t0 & 0xff;
 const char *cp;

 switch (t) {
 case 141:
  cp = "Destination Unreachable";
  break;
 case 135:
  cp = "Packet Too Big";
  break;
 case 133:
  cp = "Time Exceeded";
  break;
 case 134:
  cp = "Parameter Problem";
  break;
 case 139:
  cp = "Echo Request";
  break;
 case 140:
  cp = "Echo Reply";
  break;
 case 138:
  cp = "Group Membership Query";
  break;
 case 136:
  cp = "Group Membership Report";
  break;
 case 137:
  cp = "Group Membership Reduction";
  break;
 case 128:
  cp = "Router Solicitation";
  break;
 case 129:
  cp = "Router Advertisement";
  break;
 case 131:
  cp = "Neighbor Solicitation";
  break;
 case 132:
  cp = "Neighbor Advertisement";
  break;
 case 130:
  cp = "Redirect";
  break;
 default:
  cp = "Unknown";
  break;
 }
 return cp;
}
