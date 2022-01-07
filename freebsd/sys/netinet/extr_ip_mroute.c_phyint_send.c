
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vif {int dummy; } ;
struct mbuf {int m_len; } ;
struct ip {int ip_hl; } ;


 int M_NOWAIT ;
 int M_WRITABLE (struct mbuf*) ;
 int VIF_LOCK_ASSERT () ;
 struct mbuf* m_copypacket (struct mbuf*,int ) ;
 struct mbuf* m_pullup (struct mbuf*,int) ;
 int send_packet (struct vif*,struct mbuf*) ;

__attribute__((used)) static void
phyint_send(struct ip *ip, struct vif *vifp, struct mbuf *m)
{
    struct mbuf *mb_copy;
    int hlen = ip->ip_hl << 2;

    VIF_LOCK_ASSERT();






    mb_copy = m_copypacket(m, M_NOWAIT);
    if (mb_copy && (!M_WRITABLE(mb_copy) || mb_copy->m_len < hlen))
 mb_copy = m_pullup(mb_copy, hlen);
    if (mb_copy == ((void*)0))
 return;

    send_packet(vifp, mb_copy);
}
