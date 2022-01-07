
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipstat {int dummy; } ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int errno ;
 int memset (struct ipstat*,int ,int) ;
 int strerror (int ) ;
 int sysctlbyname (char*,struct ipstat*,size_t*,int *,int ) ;

__attribute__((used)) static void
get_ipstat(struct ipstat *stat)
{
 size_t len;
 int error;

 memset(stat, 0, sizeof(*stat));
 len = sizeof(*stat);
 error = sysctlbyname("net.inet.ip.stats", stat, &len, ((void*)0), 0);
 ATF_REQUIRE_MSG(error == 0, "sysctl(net.inet.ip.stats) failed: %s",
     strerror(errno));
 ATF_REQUIRE(len == sizeof(*stat));
}
