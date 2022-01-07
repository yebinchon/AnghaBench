
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int V_icmp6errpps_count ;
 int V_icmp6errppslim ;
 int V_icmp6errppslim_last ;
 int ppsratecheck (int *,int *,int ) ;

__attribute__((used)) static int
icmp6_ratelimit(const struct in6_addr *dst, const int type,
    const int code)
{
 int ret;

 ret = 0;


 if (!ppsratecheck(&V_icmp6errppslim_last, &V_icmp6errpps_count,
     V_icmp6errppslim)) {

  ret++;
 }

 return ret;
}
