
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mbuf {scalar_t__ m_len; scalar_t__ m_data; struct mbuf* m_next; } ;


 scalar_t__ hash32_buf (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t
hash_pkt(struct mbuf *m, uint32_t offset)
{
 uint32_t hash;

 hash = 0;

 while (m != ((void*)0) && offset > m->m_len) {





  offset -= m->m_len;
  m = m->m_next;
 }

 while (m != ((void*)0)) {

  if ((m->m_len - offset) > 0)
   hash = hash32_buf(m->m_data + offset,
       m->m_len - offset, hash);

  m = m->m_next;
  offset = 0;
        }

 return (hash);
}
