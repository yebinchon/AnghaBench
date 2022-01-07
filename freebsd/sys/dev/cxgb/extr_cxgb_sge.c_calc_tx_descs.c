
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int CSUM_TSO ;
 scalar_t__ PIO_LEN ;
 unsigned int flits_to_desc (unsigned int) ;
 int sgl_len (int) ;

__attribute__((used)) static __inline unsigned int
calc_tx_descs(const struct mbuf *m, int nsegs)
{
 unsigned int flits;

 if (m->m_pkthdr.len <= PIO_LEN)
  return 1;

 flits = sgl_len(nsegs) + 2;
 if (m->m_pkthdr.csum_flags & CSUM_TSO)
  flits++;

 return flits_to_desc(flits);
}
