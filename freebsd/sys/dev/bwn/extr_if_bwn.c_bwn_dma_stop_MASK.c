#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bwn_dma {int /*<<< orphan*/  mcast; int /*<<< orphan*/ * wme; int /*<<< orphan*/  rx; } ;
struct TYPE_2__ {struct bwn_dma dma; } ;
struct bwn_mac {int mac_flags; TYPE_1__ mac_method; } ;

/* Variables and functions */
 int BWN_MAC_FLAG_DMA ; 
 size_t WME_AC_BE ; 
 size_t WME_AC_BK ; 
 size_t WME_AC_VI ; 
 size_t WME_AC_VO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct bwn_mac *mac)
{
	struct bwn_dma *dma;

	if ((mac->mac_flags & BWN_MAC_FLAG_DMA) == 0)
		return;
	dma = &mac->mac_method.dma;

	FUNC0(&dma->rx);
	FUNC0(&dma->wme[WME_AC_BK]);
	FUNC0(&dma->wme[WME_AC_BE]);
	FUNC0(&dma->wme[WME_AC_VI]);
	FUNC0(&dma->wme[WME_AC_VO]);
	FUNC0(&dma->mcast);
}