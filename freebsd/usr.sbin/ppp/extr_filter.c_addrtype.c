
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_ADDR ;
 int T_DNS0 ;
 int T_DNS1 ;
 int T_HISADDR ;
 int T_HISADDR6 ;
 int T_MYADDR ;
 int T_MYADDR6 ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static unsigned
addrtype(const char *addr)
{
  if (!strncasecmp(addr, "MYADDR", 6) && (addr[6] == '\0' || addr[6] == '/'))
    return T_MYADDR;
  if (!strncasecmp(addr, "MYADDR6", 7) && (addr[7] == '\0' || addr[7] == '/'))
    return T_MYADDR6;
  if (!strncasecmp(addr, "HISADDR", 7) && (addr[7] == '\0' || addr[7] == '/'))
    return T_HISADDR;
  if (!strncasecmp(addr, "HISADDR6", 8) && (addr[8] == '\0' || addr[8] == '/'))
    return T_HISADDR6;
  if (!strncasecmp(addr, "DNS0", 4) && (addr[4] == '\0' || addr[4] == '/'))
    return T_DNS0;
  if (!strncasecmp(addr, "DNS1", 4) && (addr[4] == '\0' || addr[4] == '/'))
    return T_DNS1;

  return T_ADDR;
}
