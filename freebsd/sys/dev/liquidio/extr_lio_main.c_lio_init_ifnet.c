
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct octeon_device {int device; } ;
struct TYPE_9__ {int mtu; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
struct TYPE_11__ {TYPE_3__ link; } ;
struct TYPE_12__ {int ifm_media; TYPE_1__* ifm_cur; } ;
struct lio {TYPE_4__ linfo; int mtu; TYPE_5__ ifmedia; int ifp; struct octeon_device* oct_dev; } ;
typedef int if_t ;
struct TYPE_8__ {int ifm_media; } ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int CSUM_UDP_IPV6 ;
 int IFCAP_HWCSUM ;
 int IFCAP_HWCSUM_IPV6 ;
 int IFCAP_HWSTATS ;
 int IFCAP_JUMBO_MTU ;
 int IFCAP_LINKSTATE ;
 int IFCAP_LRO ;
 int IFCAP_TSO ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_IMASK ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int if_getcapabilities (int ) ;
 int if_initname (int ,int ,int ) ;
 int if_setbaudrate (int ,int ) ;
 int if_setcapabilitiesbit (int ,int,int ) ;
 int if_setcapenable (int ,int ) ;
 int if_setflags (int ,int) ;
 int if_setgetcounterfn (int ,int ) ;
 int if_sethwassist (int ,int) ;
 int if_setinitfn (int ,int ) ;
 int if_setioctlfn (int ,int ) ;
 int if_setmtu (int ,int ) ;
 int if_setqflushfn (int ,int ) ;
 int if_settransmitfn (int ,int ) ;
 int ifmedia_add (TYPE_5__*,int,int ,int *) ;
 int ifmedia_init (TYPE_5__*,int ,int ,int ) ;
 int ifmedia_set (TYPE_5__*,int) ;
 int lio_dev_dbg (struct octeon_device*,char*,int ) ;
 int lio_get_baudrate (struct octeon_device*) ;
 int lio_get_counter ;
 int lio_get_media_subtype (struct octeon_device*) ;
 int lio_ifmedia_status ;
 int lio_ifmedia_update ;
 int lio_ioctl ;
 int lio_mq_start ;
 int lio_open ;
 int lio_qflush ;

__attribute__((used)) static int
lio_init_ifnet(struct lio *lio)
{
 struct octeon_device *oct = lio->oct_dev;
 if_t ifp = lio->ifp;


 ifmedia_init(&lio->ifmedia, IFM_IMASK, lio_ifmedia_update,
       lio_ifmedia_status);


 ifmedia_add(&lio->ifmedia,
      (IFM_ETHER | IFM_FDX | lio_get_media_subtype(oct)),
      0, ((void*)0));
 ifmedia_add(&lio->ifmedia, (IFM_ETHER | IFM_AUTO), 0, ((void*)0));
 ifmedia_set(&lio->ifmedia, (IFM_ETHER | IFM_AUTO));

 lio->ifmedia.ifm_media = lio->ifmedia.ifm_cur->ifm_media;
 lio_dev_dbg(oct, "IFMEDIA flags : %x\n", lio->ifmedia.ifm_media);

 if_initname(ifp, device_get_name(oct->device),
      device_get_unit(oct->device));
 if_setflags(ifp, (IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST));
 if_setioctlfn(ifp, lio_ioctl);
 if_setgetcounterfn(ifp, lio_get_counter);
 if_settransmitfn(ifp, lio_mq_start);
 if_setqflushfn(ifp, lio_qflush);
 if_setinitfn(ifp, lio_open);
 if_setmtu(ifp, lio->linfo.link.s.mtu);
 lio->mtu = lio->linfo.link.s.mtu;
 if_sethwassist(ifp, (CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_TSO |
        CSUM_TCP_IPV6 | CSUM_UDP_IPV6));

 if_setcapabilitiesbit(ifp, (IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 |
        IFCAP_TSO | IFCAP_LRO |
        IFCAP_JUMBO_MTU | IFCAP_HWSTATS |
        IFCAP_LINKSTATE | IFCAP_VLAN_HWFILTER |
        IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTAGGING |
        IFCAP_VLAN_HWTSO | IFCAP_VLAN_MTU), 0);

 if_setcapenable(ifp, if_getcapabilities(ifp));
 if_setbaudrate(ifp, lio_get_baudrate(oct));

 return (0);
}
