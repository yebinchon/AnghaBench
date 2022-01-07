
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int l5hlen; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;

__attribute__((used)) static inline void
set_mbuf_nsegs(struct mbuf *m, uint8_t nsegs)
{

 M_ASSERTPKTHDR(m);
 m->m_pkthdr.l5hlen = nsegs;
}
