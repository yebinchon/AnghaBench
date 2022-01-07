
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct jailparam {size_t jp_valuelen; scalar_t__ jp_value; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int ipbuf ;




 int INET6_ADDRSTRLEN ;
 int * inet_ntop (int,int *,char*,int) ;
 int xo_close_list (char const*) ;
 int xo_emit (char const*,char*) ;
 int xo_err (int,char*) ;
 int xo_open_list (char const*) ;

__attribute__((used)) static void
emit_ip_addr_list(int af_family, const char *list_name, struct jailparam *param)
{
 char ipbuf[INET6_ADDRSTRLEN];
 size_t addr_len;
 const char *emit_str;
 int ai, count;

 switch (af_family) {
 case 129:
  addr_len = sizeof(struct in_addr);
  emit_str = "{P:        }{ql:ipv4_addr}{P:\n}";
  break;
 case 128:
  addr_len = sizeof(struct in6_addr);
  emit_str = "{P:        }{ql:ipv6_addr}{P:\n}";
  break;
 default:
  xo_err(1, "unsupported af_family");
  return;
 }

 count = param->jp_valuelen / addr_len;

 xo_open_list(list_name);
 for (ai = 0; ai < count; ai++) {
  if (inet_ntop(af_family,
      ((uint8_t *)param->jp_value) + addr_len * ai,
      ipbuf, sizeof(ipbuf)) == ((void*)0)) {
   xo_err(1, "inet_ntop");
  } else {
   xo_emit(emit_str, ipbuf);
  }
 }
 xo_close_list(list_name);
}
