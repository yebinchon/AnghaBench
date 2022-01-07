
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcpiphdr {int dummy; } ;
struct tcphdr {int dummy; } ;
struct ip6_hdr {int dummy; } ;
struct in_conninfo {int inc_flags; } ;


 int INC_ISIPV6 ;
 int KASSERT (int ,char*) ;
 int V_tcp_mssdflt ;
 int V_tcp_v6mssdflt ;
 size_t max (scalar_t__,scalar_t__) ;
 size_t min (scalar_t__,scalar_t__) ;
 scalar_t__ tcp_hc_getmtu (struct in_conninfo*) ;
 scalar_t__ tcp_maxmtu (struct in_conninfo*,int *) ;
 scalar_t__ tcp_maxmtu6 (struct in_conninfo*,int *) ;

int
tcp_mssopt(struct in_conninfo *inc)
{
 int mss = 0;
 uint32_t thcmtu = 0;
 uint32_t maxmtu = 0;
 size_t min_protoh;

 KASSERT(inc != ((void*)0), ("tcp_mssopt with NULL in_conninfo pointer"));
 if (maxmtu && thcmtu)
  mss = min(maxmtu, thcmtu) - min_protoh;
 else if (maxmtu || thcmtu)
  mss = max(maxmtu, thcmtu) - min_protoh;

 return (mss);
}
