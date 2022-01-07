
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int buf ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
sppp_cp_type_name(u_char type)
{
 static char buf[12];
 switch (type) {
 case 134: return "conf-req";
 case 137: return "conf-ack";
 case 136: return "conf-nak";
 case 135: return "conf-rej";
 case 128: return "term-req";
 case 129: return "term-ack";
 case 138: return "code-rej";
 case 130: return "proto-rej";
 case 131: return "echo-req";
 case 132: return "echo-reply";
 case 133: return "discard-req";
 }
 snprintf (buf, sizeof(buf), "cp/0x%x", type);
 return buf;
}
