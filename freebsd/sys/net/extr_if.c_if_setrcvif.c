
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csum_flags; struct ifnet* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
typedef scalar_t__ if_t ;


 int CSUM_SND_TAG ;
 int MPASS (int) ;

void
if_setrcvif(struct mbuf *m, if_t ifp)
{

 MPASS((m->m_pkthdr.csum_flags & CSUM_SND_TAG) == 0);
 m->m_pkthdr.rcvif = (struct ifnet *)ifp;
}
