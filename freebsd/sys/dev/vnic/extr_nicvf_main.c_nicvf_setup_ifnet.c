
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {scalar_t__ hw_tso; int dev; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int CSUM_IP ;
 int CSUM_SCTP ;
 int CSUM_TCP ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int ENOMEM ;
 int ETHERMTU ;
 int IFCAP_HWCSUM ;
 int IFCAP_HWSTATS ;
 int IFCAP_JUMBO_MTU ;
 int IFCAP_LRO ;
 int IFCAP_TSO4 ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFT_ETHER ;
 int MCLBYTES ;
 int NICVF_TSO_MAXSIZE ;
 int NICVF_TSO_NSEGS ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 struct ifnet* if_alloc (int ) ;
 int if_clearhwassist (struct ifnet*) ;
 int if_getcapabilities (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int if_setcapabilities (struct ifnet*,int ) ;
 int if_setcapabilitiesbit (struct ifnet*,int,int ) ;
 int if_setcapenable (struct ifnet*,int ) ;
 int if_setflags (struct ifnet*,int) ;
 int if_setgetcounterfn (struct ifnet*,int ) ;
 int if_sethwassistbits (struct ifnet*,int,int ) ;
 int if_sethwtsomax (struct ifnet*,int ) ;
 int if_sethwtsomaxsegcount (struct ifnet*,int ) ;
 int if_sethwtsomaxsegsize (struct ifnet*,int ) ;
 int if_setinitfn (struct ifnet*,int ) ;
 int if_setioctlfn (struct ifnet*,int ) ;
 int if_setmtu (struct ifnet*,int ) ;
 int if_setqflushfn (struct ifnet*,int ) ;
 int if_setsoftc (struct ifnet*,struct nicvf*) ;
 int if_settransmitfn (struct ifnet*,int ) ;
 int nicvf_if_getcounter ;
 int nicvf_if_init ;
 int nicvf_if_ioctl ;
 int nicvf_if_qflush ;
 int nicvf_if_transmit ;

__attribute__((used)) static int
nicvf_setup_ifnet(struct nicvf *nic)
{
 struct ifnet *ifp;

 ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(nic->dev, "Could not allocate ifnet structure\n");
  return (ENOMEM);
 }

 nic->ifp = ifp;

 if_setsoftc(ifp, nic);
 if_initname(ifp, device_get_name(nic->dev), device_get_unit(nic->dev));
 if_setflags(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);

 if_settransmitfn(ifp, nicvf_if_transmit);
 if_setqflushfn(ifp, nicvf_if_qflush);
 if_setioctlfn(ifp, nicvf_if_ioctl);
 if_setinitfn(ifp, nicvf_if_init);
 if_setgetcounterfn(ifp, nicvf_if_getcounter);

 if_setmtu(ifp, ETHERMTU);


 if_setcapabilities(ifp, 0);


 if_setcapabilitiesbit(ifp, IFCAP_VLAN_MTU | IFCAP_JUMBO_MTU, 0);
 if_setcapabilitiesbit(ifp, IFCAP_LRO, 0);
 if (nic->hw_tso) {

  if_setcapabilitiesbit(ifp, IFCAP_TSO4, 0);

  if_sethwtsomax(ifp, NICVF_TSO_MAXSIZE);
  if_sethwtsomaxsegcount(ifp, NICVF_TSO_NSEGS);
  if_sethwtsomaxsegsize(ifp, MCLBYTES);
 }

 if_setcapabilitiesbit(ifp, IFCAP_HWCSUM, 0);
 if_setcapabilitiesbit(ifp, IFCAP_HWSTATS, 0);



 if_clearhwassist(ifp);
 if_sethwassistbits(ifp, (CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_SCTP), 0);
 if (nic->hw_tso)
  if_sethwassistbits(ifp, (CSUM_TSO), 0);
 if_setcapenable(ifp, if_getcapabilities(ifp));

 return (0);
}
