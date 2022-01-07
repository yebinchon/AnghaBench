
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_len; } ;
struct host_service {char* hs_host; char* hs_service; } ;


 int SW_TLS ;
 size_t TCPDROP_FOREIGN ;
 size_t TCPDROP_LOCAL ;
 int memcpy (struct sockaddr_storage*,struct sockaddr const*,int ) ;
 int printf (char*,char*,char*,char*,char*,...) ;
 int sockinfo (struct sockaddr const*,struct host_service*) ;
 int sysctlbyname (char*,int *,int *,struct sockaddr_storage**,int) ;
 scalar_t__ tcpswitch_list_commands ;
 int warn (char*,char*,char*,char*,char*) ;

__attribute__((used)) static bool
tcpswitch(const struct sockaddr *lsa, const struct sockaddr *fsa, int mode)
{
 struct host_service local, foreign;
 struct sockaddr_storage addrs[2];
 int rv;

 memcpy(&addrs[TCPDROP_FOREIGN], fsa, fsa->sa_len);
 memcpy(&addrs[TCPDROP_LOCAL], lsa, lsa->sa_len);

 sockinfo(lsa, &local);
 sockinfo(fsa, &foreign);

 if (tcpswitch_list_commands) {
  printf("switch_tls %s %s %s %s %s\n",
      mode == SW_TLS ? "-s" : "-i",
      local.hs_host, local.hs_service,
      foreign.hs_host, foreign.hs_service);
  return (1);
 }

 rv = sysctlbyname(mode == SW_TLS ? "net.inet.tcp.switch_to_sw_tls" :
     "net.inet.tcp.switch_to_ifnet_tls", ((void*)0), ((void*)0), &addrs,
     sizeof addrs);
 if (rv == -1) {
  warn("%s %s %s %s", local.hs_host, local.hs_service,
      foreign.hs_host, foreign.hs_service);
  return (0);
 }
 printf("%s %s %s %s: switched\n", local.hs_host, local.hs_service,
     foreign.hs_host, foreign.hs_service);
 return (1);
}
