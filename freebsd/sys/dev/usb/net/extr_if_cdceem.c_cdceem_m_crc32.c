
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int dummy; } ;


 int cdceem_m_crc32_cb ;
 int m_apply (struct mbuf*,int,int,int ,int*) ;

__attribute__((used)) static uint32_t
cdceem_m_crc32(struct mbuf *m, uint32_t src_offset, uint32_t src_len)
{
 uint32_t crc = 0xFFFFFFFF;
 int error;

 error = m_apply(m, src_offset, src_len, cdceem_m_crc32_cb, &crc);
 return (crc ^ 0xFFFFFFFF);
}
