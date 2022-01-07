
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
typedef int buf ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
sppp_auth_type_name(u_short proto, u_char type)
{
 static char buf[12];
 switch (proto) {
 case 129:
  switch (type) {
  case 136: return "challenge";
  case 134: return "response";
  case 133: return "success";
  case 135: return "failure";
  }
 case 128:
  switch (type) {
  case 130: return "req";
  case 132: return "ack";
  case 131: return "nak";
  }
 }
 snprintf (buf, sizeof(buf), "auth/0x%x", type);
 return buf;
}
