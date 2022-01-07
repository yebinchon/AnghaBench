
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin_len; int sin_addr; int sin_port; void* sin_family; int sin6_addr; int sin6_port; void* sin6_family; } ;
struct sockaddr_in {int sin6_len; int sin_len; int sin_addr; int sin_port; void* sin_family; int sin6_addr; int sin6_port; void* sin6_family; } ;
struct sockaddr {int dummy; } ;
struct in_conninfo {int inc_flags; int inc_faddr; int inc_fport; int inc_laddr; int inc_lport; int inc6_faddr; int inc6_laddr; } ;


 void* AF_INET ;
 void* AF_INET6 ;
 int INC_ISIPV6 ;
 size_t TCPDROP_FOREIGN ;
 size_t TCPDROP_LOCAL ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int tcpswitch (struct sockaddr*,struct sockaddr*,int) ;

__attribute__((used)) static bool
tcpswitchconn(const struct in_conninfo *inc, int mode)
{
 struct sockaddr *local, *foreign;
 struct sockaddr_in6 sin6[2];
 struct sockaddr_in sin4[2];

 if ((inc->inc_flags & INC_ISIPV6) != 0) {
  memset(sin6, 0, sizeof sin6);

  sin6[TCPDROP_LOCAL].sin6_len = sizeof sin6[TCPDROP_LOCAL];
  sin6[TCPDROP_LOCAL].sin6_family = AF_INET6;
  sin6[TCPDROP_LOCAL].sin6_port = inc->inc_lport;
  memcpy(&sin6[TCPDROP_LOCAL].sin6_addr, &inc->inc6_laddr,
      sizeof inc->inc6_laddr);
  local = (struct sockaddr *)&sin6[TCPDROP_LOCAL];

  sin6[TCPDROP_FOREIGN].sin6_len = sizeof sin6[TCPDROP_FOREIGN];
  sin6[TCPDROP_FOREIGN].sin6_family = AF_INET6;
  sin6[TCPDROP_FOREIGN].sin6_port = inc->inc_fport;
  memcpy(&sin6[TCPDROP_FOREIGN].sin6_addr, &inc->inc6_faddr,
      sizeof inc->inc6_faddr);
  foreign = (struct sockaddr *)&sin6[TCPDROP_FOREIGN];
 } else {
  memset(sin4, 0, sizeof sin4);

  sin4[TCPDROP_LOCAL].sin_len = sizeof sin4[TCPDROP_LOCAL];
  sin4[TCPDROP_LOCAL].sin_family = AF_INET;
  sin4[TCPDROP_LOCAL].sin_port = inc->inc_lport;
  memcpy(&sin4[TCPDROP_LOCAL].sin_addr, &inc->inc_laddr,
      sizeof inc->inc_laddr);
  local = (struct sockaddr *)&sin4[TCPDROP_LOCAL];

  sin4[TCPDROP_FOREIGN].sin_len = sizeof sin4[TCPDROP_FOREIGN];
  sin4[TCPDROP_FOREIGN].sin_family = AF_INET;
  sin4[TCPDROP_FOREIGN].sin_port = inc->inc_fport;
  memcpy(&sin4[TCPDROP_FOREIGN].sin_addr, &inc->inc_faddr,
      sizeof inc->inc_faddr);
  foreign = (struct sockaddr *)&sin4[TCPDROP_FOREIGN];
 }

 return (tcpswitch(local, foreign, mode));
}
