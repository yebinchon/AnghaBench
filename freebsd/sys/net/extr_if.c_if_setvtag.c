
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ether_vtag; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;



void
if_setvtag(struct mbuf *m, uint16_t tag)
{
 m->m_pkthdr.ether_vtag = tag;
}
