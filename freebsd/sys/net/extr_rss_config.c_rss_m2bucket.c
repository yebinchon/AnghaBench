
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_HASHTYPE_GET (struct mbuf*) ;
 int rss_hash2bucket (int ,int ,int *) ;

int
rss_m2bucket(struct mbuf *m, uint32_t *bucket_id)
{

 M_ASSERTPKTHDR(m);

 return(rss_hash2bucket(m->m_pkthdr.flowid, M_HASHTYPE_GET(m),
     bucket_id));
}
