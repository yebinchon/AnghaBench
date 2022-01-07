
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_13__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; TYPE_6__ if_snd; int if_ioctl; int if_start; int if_init; TYPE_5__* if_softc; } ;
struct TYPE_12__ {struct ifnet* ifp; struct fwe_softc* fwe; } ;
struct TYPE_11__ {TYPE_7__* fc; int * post_explore; int dev; } ;
struct TYPE_8__ {int chtag; scalar_t__ sy; int tcode; } ;
struct TYPE_9__ {TYPE_1__ stream; } ;
struct TYPE_10__ {TYPE_2__ mode; } ;
struct fwe_softc {int dma_ch; TYPE_5__ eth_softc; TYPE_4__ fd; int stream_ch; TYPE_3__ pkt_hdr; int mtx; } ;
struct fw_eui64 {int dummy; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;
struct TYPE_14__ {scalar_t__ speed; struct fw_eui64 eui; } ;


 int ENOSPC ;
 int FWEDEBUG (struct ifnet*,char*) ;
 int FWTCODE_STREAM ;
 int FW_EUI64_BYTE (struct fw_eui64*,int) ;
 int GROUP ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFT_ETHER ;
 int LOCAL ;
 int MTX_DEF ;
 int TX_MAX_QUEUE ;
 int bzero (struct fwe_softc*,int) ;
 TYPE_7__* device_get_ivars (int ) ;
 int device_get_name (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int*) ;
 int fwe_init ;
 int fwe_ioctl ;
 int fwe_start ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,int,int,int,int,int,int,int) ;
 int splimp () ;
 int splx (int) ;
 int stream_ch ;
 scalar_t__ tx_speed ;

__attribute__((used)) static int
fwe_attach(device_t dev)
{
 struct fwe_softc *fwe;
 struct ifnet *ifp;
 int unit, s;
 u_char eaddr[6];
 struct fw_eui64 *eui;

 fwe = ((struct fwe_softc *)device_get_softc(dev));
 unit = device_get_unit(dev);

 bzero(fwe, sizeof(struct fwe_softc));
 mtx_init(&fwe->mtx, "fwe", ((void*)0), MTX_DEF);

 fwe->stream_ch = stream_ch;
 fwe->dma_ch = -1;

 fwe->fd.fc = device_get_ivars(dev);
 if (tx_speed < 0)
  tx_speed = fwe->fd.fc->speed;

 fwe->fd.dev = dev;
 fwe->fd.post_explore = ((void*)0);
 fwe->eth_softc.fwe = fwe;

 fwe->pkt_hdr.mode.stream.tcode = FWTCODE_STREAM;
 fwe->pkt_hdr.mode.stream.sy = 0;
 fwe->pkt_hdr.mode.stream.chtag = fwe->stream_ch;





 eui = &fwe->fd.fc->eui;
 eaddr[0] = (FW_EUI64_BYTE(eui, 0) | (0x02)) & ~(0x01);
 eaddr[1] = FW_EUI64_BYTE(eui, 1);
 eaddr[2] = FW_EUI64_BYTE(eui, 2);
 eaddr[3] = FW_EUI64_BYTE(eui, 5);
 eaddr[4] = FW_EUI64_BYTE(eui, 6);
 eaddr[5] = FW_EUI64_BYTE(eui, 7);
 printf("if_fwe%d: Fake Ethernet address: "
  "%02x:%02x:%02x:%02x:%02x:%02x\n", unit,
  eaddr[0], eaddr[1], eaddr[2], eaddr[3], eaddr[4], eaddr[5]);


 ifp = fwe->eth_softc.ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  return (ENOSPC);
 }
 ifp->if_softc = &fwe->eth_softc;

 if_initname(ifp, device_get_name(dev), unit);
 ifp->if_init = fwe_init;
 ifp->if_start = fwe_start;
 ifp->if_ioctl = fwe_ioctl;
 ifp->if_flags = (IFF_BROADCAST|IFF_SIMPLEX|IFF_MULTICAST);
 ifp->if_snd.ifq_maxlen = TX_MAX_QUEUE;

 s = splimp();
 ether_ifattach(ifp, eaddr);
 splx(s);


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_POLLING;
 ifp->if_capenable |= IFCAP_VLAN_MTU;

 FWEDEBUG(ifp, "interface created\n");
 return 0;
}
