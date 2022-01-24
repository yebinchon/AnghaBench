#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_dl {int /*<<< orphan*/  sdl_alen; int /*<<< orphan*/  sdl_type; } ;
struct ipoib_dev_priv {int unit; struct ifnet* dev; int /*<<< orphan*/  broadcastaddr; } ;
struct TYPE_3__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; struct ipoib_dev_priv* if_softc; int /*<<< orphan*/  if_addrlen; TYPE_2__* if_addr; TYPE_1__ if_snd; int /*<<< orphan*/  if_broadcastaddr; int /*<<< orphan*/  if_baudrate; int /*<<< orphan*/  if_resolvemulti; int /*<<< orphan*/  if_input; int /*<<< orphan*/  if_output; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_hdrlen; } ;
struct TYPE_4__ {scalar_t__ ifa_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_EN10MB ; 
 int /*<<< orphan*/  ETHER_HDR_LEN ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  IFT_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INFINIBAND_ALEN ; 
 int /*<<< orphan*/  IPOIB_HEADER_LEN ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipoib_init ; 
 int /*<<< orphan*/  ipoib_input ; 
 int /*<<< orphan*/  ipoib_ioctl ; 
 int /*<<< orphan*/  ipoib_output ; 
 struct ipoib_dev_priv* FUNC9 () ; 
 int /*<<< orphan*/  ipoib_resolvemulti ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  ipoib_start ; 
 int /*<<< orphan*/  ipoib_unrhdr ; 

struct ipoib_dev_priv *
FUNC10(const char *name)
{
	struct ipoib_dev_priv *priv;
	struct sockaddr_dl *sdl;
	struct ifnet *dev;

	priv = FUNC9();
	dev = priv->dev = FUNC4(IFT_INFINIBAND);
	if (!dev) {
		FUNC3(priv, M_TEMP);
		return NULL;
	}
	dev->if_softc = priv;
	priv->unit = FUNC1(ipoib_unrhdr);
	if (priv->unit == -1) {
		FUNC6(dev);
		FUNC3(priv, M_TEMP);
		return NULL;
	}
	FUNC7(dev, name, priv->unit);
	dev->if_flags = IFF_BROADCAST | IFF_MULTICAST;
	dev->if_addrlen = INFINIBAND_ALEN;
	dev->if_hdrlen = IPOIB_HEADER_LEN;
	FUNC5(dev);
	dev->if_init = ipoib_init;
	dev->if_ioctl = ipoib_ioctl;
	dev->if_start = ipoib_start;
	dev->if_output = ipoib_output;
	dev->if_input = ipoib_input;
	dev->if_resolvemulti = ipoib_resolvemulti;
	dev->if_baudrate = FUNC0(10);
	dev->if_broadcastaddr = priv->broadcastaddr;
	dev->if_snd.ifq_maxlen = ipoib_sendq_size * 2;
	sdl = (struct sockaddr_dl *)dev->if_addr->ifa_addr;
	sdl->sdl_type = IFT_INFINIBAND;
	sdl->sdl_alen = dev->if_addrlen;
	priv->dev = dev;
	FUNC8(dev, LINK_STATE_DOWN);
	FUNC2(dev, DLT_EN10MB, ETHER_HDR_LEN);

	return dev->if_softc;
}