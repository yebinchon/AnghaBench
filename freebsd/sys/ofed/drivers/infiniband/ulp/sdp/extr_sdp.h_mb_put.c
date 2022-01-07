
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mbuf {scalar_t__ m_len; int * m_data; } ;



__attribute__((used)) static inline void *
mb_put(struct mbuf *mb, int len)
{
 uint8_t *data;

 data = mb->m_data;
 data += mb->m_len;
 mb->m_len += len;
 return (void *)data;
}
