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
struct rndis_msghdr {scalar_t__ rm_type; } ;
struct hn_rx_ring {TYPE_1__* hn_ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_softc; } ;

/* Variables and functions */
 scalar_t__ REMOTE_NDIS_INDICATE_STATUS_MSG ; 
 scalar_t__ REMOTE_NDIS_PACKET_MSG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_rx_ring*,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static __inline void
FUNC6(struct hn_rx_ring *rxr, const void *data, int dlen)
{
	const struct rndis_msghdr *hdr;

	if (FUNC0(dlen < sizeof(*hdr))) {
		FUNC5(rxr->hn_ifp, "invalid RNDIS msg\n");
		return;
	}
	hdr = data;

	if (FUNC1(hdr->rm_type == REMOTE_NDIS_PACKET_MSG)) {
		/* Hot data path. */
		FUNC3(rxr, data, dlen);
		/* Done! */
		return;
	}

	if (hdr->rm_type == REMOTE_NDIS_INDICATE_STATUS_MSG)
		FUNC4(rxr->hn_ifp->if_softc, data, dlen);
	else
		FUNC2(rxr->hn_ifp->if_softc, data, dlen);
}