
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
const char *
ftype(u_int type)
{
 switch(type) {
 case 134:
  return ("block");
 case 133:
  return ("char");
 case 132:
  return ("dir");
 case 131:
  return ("fifo");
 case 130:
  return ("file");
 case 129:
  return ("link");
 case 128:
  return ("socket");
 default:
  return ("unknown");
 }

}
