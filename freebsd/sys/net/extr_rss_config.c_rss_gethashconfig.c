
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int RSS_HASHTYPE_RSS_IPV4 ;
 int RSS_HASHTYPE_RSS_IPV6 ;
 int RSS_HASHTYPE_RSS_IPV6_EX ;
 int RSS_HASHTYPE_RSS_TCP_IPV4 ;
 int RSS_HASHTYPE_RSS_TCP_IPV6 ;
 int RSS_HASHTYPE_RSS_TCP_IPV6_EX ;
 int RSS_HASHTYPE_RSS_UDP_IPV4 ;
 int RSS_HASHTYPE_RSS_UDP_IPV6 ;
 int RSS_HASHTYPE_RSS_UDP_IPV6_EX ;

inline u_int
rss_gethashconfig(void)
{
 return (
     RSS_HASHTYPE_RSS_IPV4
 | RSS_HASHTYPE_RSS_TCP_IPV4
 | RSS_HASHTYPE_RSS_IPV6
 | RSS_HASHTYPE_RSS_TCP_IPV6
 | RSS_HASHTYPE_RSS_IPV6_EX
 | RSS_HASHTYPE_RSS_TCP_IPV6_EX





 );
}
