
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vi_info {int xact_addr_filt; scalar_t__ nofldrxq; scalar_t__ nofldtxq; scalar_t__ nnmrxq; scalar_t__ nrxq; int nnmtxq; int ntxq; int hw_addr; TYPE_1__* pi; struct ifnet* ifp; int tick; } ;
struct sbuf {int dummy; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hwassist; int if_hw_tsomaxsegsize; int if_hw_tsomaxsegcount; int if_hw_tsomax; int if_ratelimit_query; int if_snd_tag_free; int if_snd_tag_query; int if_snd_tag_modify; int if_snd_tag_alloc; int if_get_counter; int if_qflush; int if_transmit; int if_ioctl; int if_init; struct vi_info* if_softc; } ;
typedef int device_t ;
struct TYPE_2__ {int adapter; } ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int CSUM_UDP_IPV6 ;
 int ENOMEM ;
 int IFCAP_NETMAP ;


 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFT_ETHER ;
 int IP_MAXPACKET ;
 int T4_CAP ;
 int T4_CAP_ENABLE ;
 int TX_SGL_SEGS_EO_TSO ;
 int TX_SGL_SEGS_TSO ;
 int callout_init (int *,int) ;
 int cxgbe_get_counter ;
 int cxgbe_init ;
 int cxgbe_ioctl ;
 int cxgbe_nm_attach (struct vi_info*) ;
 int cxgbe_qflush ;
 int cxgbe_ratelimit_query ;
 int cxgbe_snd_tag_alloc ;
 int cxgbe_snd_tag_free ;
 int cxgbe_snd_tag_modify ;
 int cxgbe_snd_tag_query ;
 int cxgbe_transmit ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc_dev (int ,int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 scalar_t__ is_ethoffload (int ) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,scalar_t__,...) ;
 int vi_sysctls (struct vi_info*) ;

__attribute__((used)) static int
cxgbe_vi_attach(device_t dev, struct vi_info *vi)
{
 struct ifnet *ifp;
 struct sbuf *sb;

 vi->xact_addr_filt = -1;
 callout_init(&vi->tick, 1);


 ifp = if_alloc_dev(IFT_ETHER, dev);
 if (ifp == ((void*)0)) {
  device_printf(dev, "Cannot allocate ifnet\n");
  return (ENOMEM);
 }
 vi->ifp = ifp;
 ifp->if_softc = vi;

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;

 ifp->if_init = cxgbe_init;
 ifp->if_ioctl = cxgbe_ioctl;
 ifp->if_transmit = cxgbe_transmit;
 ifp->if_qflush = cxgbe_qflush;
 ifp->if_get_counter = cxgbe_get_counter;
 ifp->if_capabilities = T4_CAP;
 ifp->if_capenable = T4_CAP_ENABLE;
 ifp->if_hwassist = CSUM_TCP | CSUM_UDP | CSUM_IP | CSUM_TSO |
     CSUM_UDP_IPV6 | CSUM_TCP_IPV6;

 ifp->if_hw_tsomax = IP_MAXPACKET;
 ifp->if_hw_tsomaxsegcount = TX_SGL_SEGS_TSO;




 ifp->if_hw_tsomaxsegsize = 65536;

 ether_ifattach(ifp, vi->hw_addr);




 sb = sbuf_new_auto();
 sbuf_printf(sb, "%d txq, %d rxq (NIC)", vi->ntxq, vi->nrxq);
 sbuf_finish(sb);
 device_printf(dev, "%s\n", sbuf_data(sb));
 sbuf_delete(sb);

 vi_sysctls(vi);

 return (0);
}
