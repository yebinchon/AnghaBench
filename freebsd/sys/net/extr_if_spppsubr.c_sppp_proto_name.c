
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int buf ;







 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
sppp_proto_name(u_short proto)
{
 static char buf[12];
 switch (proto) {
 case 129: return "lcp";
 case 131: return "ipcp";
 case 128: return "pap";
 case 132: return "chap";
 case 130: return "ipv6cp";
 }
 snprintf(buf, sizeof(buf), "proto/0x%x", (unsigned)proto);
 return buf;
}
