
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; TYPE_4__ if_snd; int if_ioctl; int if_start; int if_init; TYPE_3__* if_softc; } ;
struct TYPE_9__ {struct ifnet* fwip_ifp; struct fwip_softc* fwip; } ;
struct TYPE_8__ {TYPE_5__* fc; int post_busreset; int * post_explore; int dev; } ;
struct fwip_softc {int dma_ch; TYPE_3__ fw_softc; TYPE_2__ fd; int start_send; int mtx; } ;
struct fw_hwaddr {scalar_t__ sspd; void* sender_unicast_FIFO_lo; int sender_unicast_FIFO_hi; int sender_max_rec; void* sender_unique_ID_lo; void* sender_unique_ID_hi; } ;
typedef int device_t ;
struct TYPE_12__ {struct fw_hwaddr fc_hwaddr; } ;
struct TYPE_7__ {int lo; int hi; } ;
struct TYPE_11__ {scalar_t__ speed; int maxrec; TYPE_1__ eui; } ;


 int ENOSPC ;
 int FWIPDEBUG (struct ifnet*,char*) ;
 int IFCAP_POLLING ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 TYPE_6__* IFP2FWC (struct ifnet*) ;
 int IFT_IEEE1394 ;
 int INET_FIFO ;
 int MTX_DEF ;
 int TASK_INIT (int *,int ,int ,struct fwip_softc*) ;
 int TX_MAX_QUEUE ;
 TYPE_5__* device_get_ivars (int ) ;
 int device_get_name (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int firewire_ifattach (struct ifnet*,struct fw_hwaddr*) ;
 int fwip_init ;
 int fwip_ioctl ;
 int fwip_post_busreset ;
 int fwip_start ;
 int fwip_start_send ;
 void* htonl (int ) ;
 int htons (int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int splimp () ;
 int splx (int) ;
 scalar_t__ tx_speed ;

__attribute__((used)) static int
fwip_attach(device_t dev)
{
 struct fwip_softc *fwip;
 struct ifnet *ifp;
 int unit, s;
 struct fw_hwaddr *hwaddr;

 fwip = ((struct fwip_softc *)device_get_softc(dev));
 unit = device_get_unit(dev);
 ifp = fwip->fw_softc.fwip_ifp = if_alloc(IFT_IEEE1394);
 if (ifp == ((void*)0))
  return (ENOSPC);

 mtx_init(&fwip->mtx, "fwip", ((void*)0), MTX_DEF);

 fwip->dma_ch = -1;

 fwip->fd.fc = device_get_ivars(dev);
 if (tx_speed < 0)
  tx_speed = fwip->fd.fc->speed;

 fwip->fd.dev = dev;
 fwip->fd.post_explore = ((void*)0);
 fwip->fd.post_busreset = fwip_post_busreset;
 fwip->fw_softc.fwip = fwip;
 TASK_INIT(&fwip->start_send, 0, fwip_start_send, fwip);




 hwaddr = &IFP2FWC(fwip->fw_softc.fwip_ifp)->fc_hwaddr;
 hwaddr->sender_unique_ID_hi = htonl(fwip->fd.fc->eui.hi);
 hwaddr->sender_unique_ID_lo = htonl(fwip->fd.fc->eui.lo);
 hwaddr->sender_max_rec = fwip->fd.fc->maxrec;
 hwaddr->sspd = fwip->fd.fc->speed;
 hwaddr->sender_unicast_FIFO_hi = htons((uint16_t)(INET_FIFO >> 32));
 hwaddr->sender_unicast_FIFO_lo = htonl((uint32_t)INET_FIFO);


 ifp->if_softc = &fwip->fw_softc;

 if_initname(ifp, device_get_name(dev), unit);
 ifp->if_init = fwip_init;
 ifp->if_start = fwip_start;
 ifp->if_ioctl = fwip_ioctl;
 ifp->if_flags = (IFF_BROADCAST|IFF_SIMPLEX|IFF_MULTICAST);
 ifp->if_snd.ifq_maxlen = TX_MAX_QUEUE;




 s = splimp();
 firewire_ifattach(ifp, hwaddr);
 splx(s);

 FWIPDEBUG(ifp, "interface created\n");
 return 0;
}
