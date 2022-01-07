
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
struct TYPE_2__ {int len; } ;
struct mbuf {scalar_t__ m_data; TYPE_1__ m_pkthdr; int m_len; } ;


 int KASSERT (int,char*) ;
 int MCLBYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int NAE_CACHELINE_SIZE ;
 int m_adj (struct mbuf*,int) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 scalar_t__ vtophys (scalar_t__) ;

__attribute__((used)) static void *
get_buf(void)
{
 struct mbuf *m_new;
 uint64_t *md;




 if ((m_new = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR)) == ((void*)0))
  return (((void*)0));
 m_new->m_len = m_new->m_pkthdr.len = MCLBYTES;
 KASSERT(((uintptr_t)m_new->m_data & (NAE_CACHELINE_SIZE - 1)) == 0,
     ("m_new->m_data is not cacheline aligned"));
 md = (uint64_t *)m_new->m_data;
 md[0] = (intptr_t)m_new;
 md[1] = 0xf00bad;
 m_adj(m_new, NAE_CACHELINE_SIZE);







 return ((void *)m_new->m_data);
}
