
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct ifnet* rcvif; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_flags; int if_drv_flags; int (* if_input ) (struct ifnet* const,struct mbuf*) ;} ;
typedef TYPE_2__* priv_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {struct ifnet* ifp; } ;


 int EINVAL ;
 int ENETDOWN ;
 scalar_t__ ETHER_HDR_LEN ;
 int IFCOUNTER_IPACKETS ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int if_inc_counter (struct ifnet* const,int ,int) ;
 struct mbuf* m_pullup (struct mbuf*,scalar_t__) ;
 int stub1 (struct ifnet* const,struct mbuf*) ;

__attribute__((used)) static int
ng_eiface_rcvdata(hook_p hook, item_p item)
{
 const priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct ifnet *const ifp = priv->ifp;
 struct mbuf *m;

 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);

 if (!((ifp->if_flags & IFF_UP) &&
     (ifp->if_drv_flags & IFF_DRV_RUNNING))) {
  NG_FREE_M(m);
  return (ENETDOWN);
 }

 if (m->m_len < ETHER_HDR_LEN) {
  m = m_pullup(m, ETHER_HDR_LEN);
  if (m == ((void*)0))
   return (EINVAL);
 }


 m->m_pkthdr.rcvif = ifp;


 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);

 (*ifp->if_input)(ifp, m);


 return (0);
}
