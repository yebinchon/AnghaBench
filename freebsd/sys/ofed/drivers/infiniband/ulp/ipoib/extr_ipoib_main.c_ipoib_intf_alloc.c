
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_dl {int sdl_alen; int sdl_type; } ;
struct ipoib_dev_priv {int unit; struct ifnet* dev; int broadcastaddr; } ;
struct TYPE_3__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; struct ipoib_dev_priv* if_softc; int if_addrlen; TYPE_2__* if_addr; TYPE_1__ if_snd; int if_broadcastaddr; int if_baudrate; int if_resolvemulti; int if_input; int if_output; int if_start; int if_ioctl; int if_init; int if_hdrlen; } ;
struct TYPE_4__ {scalar_t__ ifa_addr; } ;


 int DLT_EN10MB ;
 int ETHER_HDR_LEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFT_INFINIBAND ;
 int IF_Gbps (int) ;
 int INFINIBAND_ALEN ;
 int IPOIB_HEADER_LEN ;
 int LINK_STATE_DOWN ;
 int M_TEMP ;
 int alloc_unr (int ) ;
 int bpfattach (struct ifnet*,int ,int ) ;
 int free (struct ipoib_dev_priv*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int if_initname (struct ifnet*,char const*,int) ;
 int if_link_state_change (struct ifnet*,int ) ;
 int ipoib_init ;
 int ipoib_input ;
 int ipoib_ioctl ;
 int ipoib_output ;
 struct ipoib_dev_priv* ipoib_priv_alloc () ;
 int ipoib_resolvemulti ;
 int ipoib_sendq_size ;
 int ipoib_start ;
 int ipoib_unrhdr ;

struct ipoib_dev_priv *
ipoib_intf_alloc(const char *name)
{
 struct ipoib_dev_priv *priv;
 struct sockaddr_dl *sdl;
 struct ifnet *dev;

 priv = ipoib_priv_alloc();
 dev = priv->dev = if_alloc(IFT_INFINIBAND);
 if (!dev) {
  free(priv, M_TEMP);
  return ((void*)0);
 }
 dev->if_softc = priv;
 priv->unit = alloc_unr(ipoib_unrhdr);
 if (priv->unit == -1) {
  if_free(dev);
  free(priv, M_TEMP);
  return ((void*)0);
 }
 if_initname(dev, name, priv->unit);
 dev->if_flags = IFF_BROADCAST | IFF_MULTICAST;
 dev->if_addrlen = INFINIBAND_ALEN;
 dev->if_hdrlen = IPOIB_HEADER_LEN;
 if_attach(dev);
 dev->if_init = ipoib_init;
 dev->if_ioctl = ipoib_ioctl;
 dev->if_start = ipoib_start;
 dev->if_output = ipoib_output;
 dev->if_input = ipoib_input;
 dev->if_resolvemulti = ipoib_resolvemulti;
 dev->if_baudrate = IF_Gbps(10);
 dev->if_broadcastaddr = priv->broadcastaddr;
 dev->if_snd.ifq_maxlen = ipoib_sendq_size * 2;
 sdl = (struct sockaddr_dl *)dev->if_addr->ifa_addr;
 sdl->sdl_type = IFT_INFINIBAND;
 sdl->sdl_alen = dev->if_addrlen;
 priv->dev = dev;
 if_link_state_change(dev, LINK_STATE_DOWN);
 bpfattach(dev, DLT_EN10MB, ETHER_HDR_LEN);

 return dev->if_softc;
}
