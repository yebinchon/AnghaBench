
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* if_rxd_info_t ;
struct TYPE_3__ {int iri_rsstype; } ;


 int BNXT_GET_RSS_PROFILE_ID (int) ;






 int M_HASHTYPE_OPAQUE_HASH ;
 int M_HASHTYPE_RSS_IPV4 ;
 int M_HASHTYPE_RSS_IPV6 ;
 int M_HASHTYPE_RSS_TCP_IPV4 ;
 int M_HASHTYPE_RSS_TCP_IPV6 ;
 int M_HASHTYPE_RSS_UDP_IPV4 ;
 int M_HASHTYPE_RSS_UDP_IPV6 ;

__attribute__((used)) static void
bnxt_set_rsstype(if_rxd_info_t ri, uint8_t rss_hash_type)
{
 uint8_t rss_profile_id;

 rss_profile_id = BNXT_GET_RSS_PROFILE_ID(rss_hash_type);
 switch (rss_profile_id) {
 case 131:
  ri->iri_rsstype = M_HASHTYPE_RSS_TCP_IPV4;
  break;
 case 129:
  ri->iri_rsstype = M_HASHTYPE_RSS_UDP_IPV4;
  break;
 case 133:
  ri->iri_rsstype = M_HASHTYPE_RSS_IPV4;
  break;
 case 130:
  ri->iri_rsstype = M_HASHTYPE_RSS_TCP_IPV6;
  break;
 case 128:
  ri->iri_rsstype = M_HASHTYPE_RSS_UDP_IPV6;
  break;
 case 132:
  ri->iri_rsstype = M_HASHTYPE_RSS_IPV6;
  break;
 default:
  ri->iri_rsstype = M_HASHTYPE_OPAQUE_HASH;
  break;
 }
}
