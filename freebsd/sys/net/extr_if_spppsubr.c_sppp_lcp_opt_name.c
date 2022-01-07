
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int buf ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
sppp_lcp_opt_name(u_char opt)
{
 static char buf[12];
 switch (opt) {
 case 130: return "mru";
 case 133: return "async-map";
 case 132: return "auth-proto";
 case 128: return "qual-proto";
 case 131: return "magic";
 case 129: return "proto-comp";
 case 134: return "addr-comp";
 }
 snprintf (buf, sizeof(buf), "lcp/0x%x", opt);
 return buf;
}
