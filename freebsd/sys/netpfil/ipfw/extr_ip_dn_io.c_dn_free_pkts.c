
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;


 int FREE_PKT (struct mbuf*) ;

void dn_free_pkts(struct mbuf *mnext)
{
        struct mbuf *m;

        while ((m = mnext) != ((void*)0)) {
                mnext = m->m_nextpkt;
                FREE_PKT(m);
        }
}
