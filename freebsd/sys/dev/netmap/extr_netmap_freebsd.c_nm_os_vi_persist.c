
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_short ;
typedef scalar_t__ u_char ;
struct ifnet {int if_mtu; int if_flags; int if_capenable; int if_capabilities; int if_snd; int if_start; scalar_t__ if_ioctl; void* if_init; } ;


 int EBUSY ;
 int ENOMEM ;
 int ETHERMTU ;
 int IFCAP_LINKSTATE ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFF_UP ;
 int IFQ_SET_MAXLEN (int *,int ) ;
 int IFT_ETHER ;
 int IF_DUNIT_NONE ;
 int bcopy (scalar_t__*,scalar_t__*,int) ;
 int ether_ifattach (struct ifnet*,scalar_t__*) ;
 scalar_t__ htons (int) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,char const*,int ) ;
 int ifqmaxlen ;
 int nm_prerr (char*) ;
 scalar_t__ nm_vi_dummy ;
 int nm_vi_get_index () ;
 int nm_vi_start ;
 int ticks ;

int
nm_os_vi_persist(const char *name, struct ifnet **ret)
{
 struct ifnet *ifp;
 u_short macaddr_hi;
 uint32_t macaddr_mid;
 u_char eaddr[6];
 int unit = nm_vi_get_index();

 if (unit < 0)
  return EBUSY;




 macaddr_hi = htons(0x00be);
 macaddr_mid = (uint32_t) ticks;
 bcopy(&macaddr_hi, eaddr, sizeof(short));
 bcopy(&macaddr_mid, &eaddr[2], sizeof(uint32_t));
 eaddr[5] = (uint8_t)unit;

 ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  nm_prerr("if_alloc failed");
  return ENOMEM;
 }
 if_initname(ifp, name, IF_DUNIT_NONE);
 ifp->if_mtu = 65536;
 ifp->if_flags = IFF_UP | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_init = (void *)nm_vi_dummy;
 ifp->if_ioctl = nm_vi_dummy;
 ifp->if_start = nm_vi_start;
 ifp->if_mtu = ETHERMTU;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_capabilities |= IFCAP_LINKSTATE;
 ifp->if_capenable |= IFCAP_LINKSTATE;

 ether_ifattach(ifp, eaddr);
 *ret = ifp;
 return 0;
}
