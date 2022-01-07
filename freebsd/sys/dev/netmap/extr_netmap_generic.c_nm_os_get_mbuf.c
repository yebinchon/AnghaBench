
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {scalar_t__ needed_tailroom; scalar_t__ needed_headroom; } ;


 int GFP_ATOMIC ;
 struct mbuf* alloc_skb (scalar_t__,int ) ;

__attribute__((used)) static inline struct mbuf *
nm_os_get_mbuf(struct ifnet *ifp, int len)
{
 return alloc_skb(ifp->needed_headroom + len +
    ifp->needed_tailroom, GFP_ATOMIC);
}
