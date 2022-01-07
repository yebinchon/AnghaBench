
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct in_addr {int dummy; } ;


 int LogWARN ;
 int StrToAddr (char const*,struct in_addr*) ;
 int StrToPortRange (char*,int *,int *,char const*) ;
 int log_Printf (int ,char*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
StrToAddrAndPort(const char *str, struct in_addr *addr, u_short *low,
                 u_short *high, const char *proto)
{
  char *colon;
  int res;

  colon = strchr(str, ':');
  if (!colon) {
    log_Printf(LogWARN, "StrToAddrAndPort: %s is missing port number.\n", str);
    return -1;
  }

  *colon = '\0';
  res = StrToAddr(str, addr);
  *colon = ':';
  if (res != 0)
    return -1;

  return StrToPortRange(colon + 1, low, high, proto);
}
