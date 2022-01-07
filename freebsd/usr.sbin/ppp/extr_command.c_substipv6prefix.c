
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int prefix ;
typedef int ipv6addr ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int inet_ntop (int ,char const*,char*,int) ;
 int snprintf (char*,int,char*,char*,char const) ;
 char* subst (char*,char const*,char*) ;

__attribute__((used)) static char *
substipv6prefix(char *tgt, const char *oldstr, const uint8_t *ipv6prefix)
{
  uint8_t ipv6addr[INET6_ADDRSTRLEN];
  uint8_t prefix[INET6_ADDRSTRLEN + sizeof("/128") - 1];

  if (ipv6prefix) {
    inet_ntop(AF_INET6, &ipv6prefix[2], ipv6addr, sizeof(ipv6addr));
    snprintf(prefix, sizeof(prefix), "%s/%d", ipv6addr, ipv6prefix[1]);
  } else
    prefix[0] = '\0';
  return subst(tgt, oldstr, prefix);
}
