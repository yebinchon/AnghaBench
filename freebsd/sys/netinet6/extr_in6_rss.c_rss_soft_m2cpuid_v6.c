
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_HASHTYPE_GET (struct mbuf*) ;
 int M_HASHTYPE_SET (struct mbuf*,int ) ;
 int NETISR_CPUID_NONE ;
 int RSS_HASH_PKT_INGRESS ;
 int rss_hash2cpuid (int ,int ) ;
 int rss_mbuf_software_hash_v6 (struct mbuf*,int ,int *,int *) ;

struct mbuf *
rss_soft_m2cpuid_v6(struct mbuf *m, uintptr_t source, u_int *cpuid)
{
 uint32_t hash_val, hash_type;
 int ret;

 M_ASSERTPKTHDR(m);

 ret = rss_mbuf_software_hash_v6(m, RSS_HASH_PKT_INGRESS,
     &hash_val, &hash_type);
 if (ret > 0) {

  *cpuid = rss_hash2cpuid(m->m_pkthdr.flowid, M_HASHTYPE_GET(m));
 } else if (ret == 0) {

  m->m_pkthdr.flowid = hash_val;
  M_HASHTYPE_SET(m, hash_type);
  *cpuid = rss_hash2cpuid(m->m_pkthdr.flowid, M_HASHTYPE_GET(m));
 } else {

  *cpuid = NETISR_CPUID_NONE;
 }
 return (m);
}
