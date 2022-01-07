
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
protocol_to_string(int domain, int type, int protocol)
{

 switch (domain) {
 case 138:
 case 137:
  switch (protocol) {
  case 131:
   return ("TCP");
  case 130:
   return ("UDP");
  case 134:
   return ("ICM");
  case 133:
   return ("RAW");
  case 132:
   return ("SCT");
  case 135:
   return ("IPD");
  default:
   return ("IP?");
  }

 case 136:
  switch (type) {
  case 128:
   return ("UDS");
  case 129:
   return ("UDD");
  default:
   return ("UD?");
  }
 default:
  return ("?");
 }
}
