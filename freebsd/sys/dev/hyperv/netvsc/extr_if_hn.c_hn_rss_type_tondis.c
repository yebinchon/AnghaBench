
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KASSERT (int,char*) ;
 int NDIS_HASH_IPV4 ;
 int NDIS_HASH_IPV6 ;
 int NDIS_HASH_IPV6_EX ;
 int NDIS_HASH_TCP_IPV4 ;
 int NDIS_HASH_TCP_IPV6 ;
 int NDIS_HASH_TCP_IPV6_EX ;
 int NDIS_HASH_UDP_IPV4_X ;
 int RSS_TYPE_IPV4 ;
 int RSS_TYPE_IPV6 ;
 int RSS_TYPE_IPV6_EX ;
 int RSS_TYPE_TCP_IPV4 ;
 int RSS_TYPE_TCP_IPV6 ;
 int RSS_TYPE_TCP_IPV6_EX ;
 int RSS_TYPE_UDP_IPV4 ;
 int RSS_TYPE_UDP_IPV6 ;
 int RSS_TYPE_UDP_IPV6_EX ;

__attribute__((used)) static uint32_t
hn_rss_type_tondis(uint32_t types)
{
 uint32_t rss_hash = 0;

 KASSERT((types & (RSS_TYPE_UDP_IPV6 | RSS_TYPE_UDP_IPV6_EX)) == 0,
     ("UDP6 and UDP6EX are not supported"));

 if (types & RSS_TYPE_IPV4)
  rss_hash |= NDIS_HASH_IPV4;
 if (types & RSS_TYPE_TCP_IPV4)
  rss_hash |= NDIS_HASH_TCP_IPV4;
 if (types & RSS_TYPE_IPV6)
  rss_hash |= NDIS_HASH_IPV6;
 if (types & RSS_TYPE_IPV6_EX)
  rss_hash |= NDIS_HASH_IPV6_EX;
 if (types & RSS_TYPE_TCP_IPV6)
  rss_hash |= NDIS_HASH_TCP_IPV6;
 if (types & RSS_TYPE_TCP_IPV6_EX)
  rss_hash |= NDIS_HASH_TCP_IPV6_EX;
 if (types & RSS_TYPE_UDP_IPV4)
  rss_hash |= NDIS_HASH_UDP_IPV4_X;
 return (rss_hash);
}
