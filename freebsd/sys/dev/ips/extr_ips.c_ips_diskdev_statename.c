
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char* ips_diskdev_statename(u_int8_t state)
{
 static char statebuf[20];
 switch(state){
  case 130:
   return("OFFLINE");
   break;
  case 129:
   return("OK");
   break;
  case 132:
   return("DEGRADED");
   break;
  case 131:
   return("FREE");
   break;
  case 128:
   return("SYS");
   break;
  case 133:
   return("CRS");
   break;
 }
 sprintf(statebuf,"UNKNOWN(0x%02x)", state);
 return(statebuf);
}
