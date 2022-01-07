
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_flags; int m_data; TYPE_1__ m_pkthdr; int m_len; } ;
struct ifnet {int if_bpf; } ;
typedef int af1 ;




 int EAFNOSUPPORT ;
 int IFCOUNTER_IBYTES ;
 int IFCOUNTER_IPACKETS ;
 int KASSERT (int,char*) ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_LOOP ;
 int M_MCAST ;
 int NETISR_IP ;
 int NETISR_IPV6 ;
 struct ifnet* V_loif ;
 int bcopy (int,char*,int ) ;
 int bpf_mtap (int ,struct mbuf*) ;
 int bpf_mtap2 (int ,int*,int,struct mbuf*) ;
 scalar_t__ bpf_peers_present (int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_adj (struct mbuf*,int) ;
 int m_freem (struct mbuf*) ;
 int m_tag_delete_nonpersistent (struct mbuf*) ;
 int mac_ifnet_create_mbuf (struct ifnet*,struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 int netisr_queue (int,struct mbuf*) ;
 int printf (char*,int) ;
 int vm_offset_t ;

int
if_simloop(struct ifnet *ifp, struct mbuf *m, int af, int hlen)
{
 int isr;

 M_ASSERTPKTHDR(m);
 m_tag_delete_nonpersistent(m);
 m->m_pkthdr.rcvif = ifp;
 if (hlen > 0) {
  if (bpf_peers_present(ifp->if_bpf)) {
   bpf_mtap(ifp->if_bpf, m);
  }
 } else {
  if (bpf_peers_present(V_loif->if_bpf)) {
   if ((m->m_flags & M_MCAST) == 0 || V_loif == ifp) {

    u_int32_t af1 = af;




    bpf_mtap2(V_loif->if_bpf, &af1, sizeof(af1), m);
   }
  }
 }


 if (hlen > 0) {
  m_adj(m, hlen);





  if (mtod(m, vm_offset_t) & 3) {
   KASSERT(hlen >= 3, ("if_simloop: hlen too small"));
   bcopy(m->m_data,
       (char *)(mtod(m, vm_offset_t)
    - (mtod(m, vm_offset_t) & 3)),
       m->m_len);
   m->m_data -= (mtod(m,vm_offset_t) & 3);
  }

 }


 switch (af) {
 default:
  printf("if_simloop: can't handle af=%d\n", af);
  m_freem(m);
  return (EAFNOSUPPORT);
 }
 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
 if_inc_counter(ifp, IFCOUNTER_IBYTES, m->m_pkthdr.len);
 netisr_queue(isr, m);
 return (0);
}
