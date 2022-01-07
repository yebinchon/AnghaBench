
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jail {char* path; char* hostname; char* jailname; int ip4s; int ip6s; struct in6_addr* ip6; struct in_addr* ip4; int version; } ;
struct in_addr {int s_addr; } ;
struct in6_addr {int dummy; } ;
typedef int j ;


 struct in6_addr IN6ADDR_LOOPBACK_INIT ;
 int INADDR_LOOPBACK ;
 int JAIL_API_VERSION ;
 int bzero (struct jail*,int) ;
 int err (int,char*,char const*) ;
 int htonl (int ) ;
 scalar_t__ jail (struct jail*) ;

__attribute__((used)) static void
enter_jail(const char *test)
{
 struct jail j;
 struct in_addr ia4;




 bzero(&j, sizeof(j));
 j.version = JAIL_API_VERSION;
 j.path = "/";
 j.hostname = "test";
 j.jailname = "regressions/priv";
 ia4.s_addr = htonl(INADDR_LOOPBACK);
 j.ip4s = 1;
 j.ip4 = &ia4;




 if (jail(&j) < 0)
  err(-1, "test %s: jail", test);
}
