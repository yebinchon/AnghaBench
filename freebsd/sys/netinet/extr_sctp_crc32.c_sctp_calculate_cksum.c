
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mbuf {scalar_t__ m_len; scalar_t__ m_data; struct mbuf* m_next; } ;


 int KASSERT (int ,char*) ;
 scalar_t__ calculate_crc32c (scalar_t__,unsigned char*,unsigned int) ;
 scalar_t__ sctp_finalize_crc32c (scalar_t__) ;

uint32_t
sctp_calculate_cksum(struct mbuf *m, uint32_t offset)
{
 uint32_t base = 0xffffffff;

 while (offset > 0) {
  KASSERT(m != ((void*)0), ("sctp_calculate_cksum, offset > length of mbuf chain"));
  if (offset < (uint32_t)m->m_len) {
   break;
  }
  offset -= m->m_len;
  m = m->m_next;
 }
 if (offset > 0) {
  base = calculate_crc32c(base,
      (unsigned char *)(m->m_data + offset),
      (unsigned int)(m->m_len - offset));
  m = m->m_next;
 }
 while (m != ((void*)0)) {
  base = calculate_crc32c(base,
      (unsigned char *)m->m_data,
      (unsigned int)m->m_len);
  m = m->m_next;
 }
 base = sctp_finalize_crc32c(base);
 return (base);
}
