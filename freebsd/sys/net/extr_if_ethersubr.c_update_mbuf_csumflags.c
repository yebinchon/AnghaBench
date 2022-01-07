
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csum_flags; int csum_data; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int CSUM_DATA_VALID ;
 int CSUM_DELAY_DATA ;
 int CSUM_IP ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int CSUM_SCTP ;
 int CSUM_SCTP_VALID ;

__attribute__((used)) static void
update_mbuf_csumflags(struct mbuf *src, struct mbuf *dst)
{
 int csum_flags = 0;

 if (src->m_pkthdr.csum_flags & CSUM_IP)
  csum_flags |= (CSUM_IP_CHECKED|CSUM_IP_VALID);
 if (src->m_pkthdr.csum_flags & CSUM_DELAY_DATA)
  csum_flags |= (CSUM_DATA_VALID|CSUM_PSEUDO_HDR);
 if (src->m_pkthdr.csum_flags & CSUM_SCTP)
  csum_flags |= CSUM_SCTP_VALID;
 dst->m_pkthdr.csum_flags |= csum_flags;
 if (csum_flags & CSUM_DATA_VALID)
  dst->m_pkthdr.csum_data = 0xffff;
}
