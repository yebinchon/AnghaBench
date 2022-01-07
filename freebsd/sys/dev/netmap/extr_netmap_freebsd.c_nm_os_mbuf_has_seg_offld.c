
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int CSUM_TSO ;

int
nm_os_mbuf_has_seg_offld(struct mbuf *m)
{
 return m->m_pkthdr.csum_flags & CSUM_TSO;
}
