
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int len; int ether_vtag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;
struct ifnet {scalar_t__ if_type; int if_capenable; } ;
typedef int pad ;


 int ETHERMIN ;
 int ETHER_HDR_LEN ;
 int EVL_MAKETAG (int ,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;
 scalar_t__ IFT_ETHER ;
 int MTAG_8021Q ;
 int MTAG_8021Q_PCP_OUT ;
 int M_VLANTAG ;
 scalar_t__ V_soft_pad ;
 struct mbuf* ether_vlanencap (struct mbuf*,int ) ;
 int if_printf (struct ifnet*,char*) ;
 int m_append (struct mbuf*,int ,char const*) ;
 int m_freem (struct mbuf*) ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int min (int,int) ;
 scalar_t__ vlan_mtag_pcp ;

bool
ether_8021q_frame(struct mbuf **mp, struct ifnet *ife, struct ifnet *p,
    uint16_t vid, uint8_t pcp)
{
 struct m_tag *mtag;
 int n;
 uint16_t tag;
 static const char pad[8];
 if (V_soft_pad && p->if_type == IFT_ETHER) {
  for (n = ETHERMIN + ETHER_HDR_LEN - (*mp)->m_pkthdr.len;
       n > 0; n -= sizeof(pad)) {
   if (!m_append(*mp, min(n, sizeof(pad)), pad))
    break;
  }
  if (n > 0) {
   m_freem(*mp);
   *mp = ((void*)0);
   if_printf(ife, "cannot pad short frame");
   return (0);
  }
 }
 if (vlan_mtag_pcp && (mtag = m_tag_locate(*mp, MTAG_8021Q,
     MTAG_8021Q_PCP_OUT, ((void*)0))) != ((void*)0))
  tag = EVL_MAKETAG(vid, *(uint8_t *)(mtag + 1), 0);
 else
  tag = EVL_MAKETAG(vid, pcp, 0);
 if (p->if_capenable & IFCAP_VLAN_HWTAGGING) {
  (*mp)->m_pkthdr.ether_vtag = tag;
  (*mp)->m_flags |= M_VLANTAG;
 } else {
  *mp = ether_vlanencap(*mp, tag);
  if (*mp == ((void*)0)) {
   if_printf(ife, "unable to prepend 802.1Q header");
   return (0);
  }
 }
 return (1);
}
