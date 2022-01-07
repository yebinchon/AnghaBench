
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct route {int dummy; } ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_bpf; } ;
typedef int af ;


 scalar_t__ AF_UNSPEC ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OPACKETS ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int bcopy (int ,scalar_t__*,int) ;
 int bpf_mtap2 (int ,scalar_t__*,int,struct mbuf*) ;
 scalar_t__ bpf_peers_present (int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
discoutput(struct ifnet *ifp, struct mbuf *m, const struct sockaddr *dst,
    struct route *ro)
{
 u_int32_t af;

 M_ASSERTPKTHDR(m);


 if (dst->sa_family == AF_UNSPEC)
  bcopy(dst->sa_data, &af, sizeof(af));
 else
  af = dst->sa_family;

 if (bpf_peers_present(ifp->if_bpf))
  bpf_mtap2(ifp->if_bpf, &af, sizeof(af), m);

 m->m_pkthdr.rcvif = ifp;

 if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
 if_inc_counter(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len);

 m_freem(m);
 return (0);
}
