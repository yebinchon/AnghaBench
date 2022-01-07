
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;


 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 struct mbuf* m_getjcl (int ,int ,int ,int ) ;

__attribute__((used)) static inline void *
lio_recv_buffer_alloc(uint32_t size)
{
 struct mbuf *mb = ((void*)0);

 mb = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, size);
 if (mb != ((void*)0))
  mb->m_pkthdr.len = mb->m_len = size;

 return ((void *)mb);
}
