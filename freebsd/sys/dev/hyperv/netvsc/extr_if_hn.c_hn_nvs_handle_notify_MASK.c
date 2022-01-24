#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmbus_chanpkt_hdr {int dummy; } ;
struct hn_softc {int /*<<< orphan*/  hn_ifp; } ;
struct hn_nvs_hdr {scalar_t__ nvs_type; } ;

/* Variables and functions */
 scalar_t__ HN_NVS_TYPE_TXTBL_NOTE ; 
 struct hn_nvs_hdr* FUNC0 (struct vmbus_chanpkt_hdr const*) ; 
 int FUNC1 (struct vmbus_chanpkt_hdr const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC3(struct hn_softc *sc, const struct vmbus_chanpkt_hdr *pkt)
{
	const struct hn_nvs_hdr *hdr;

	if (FUNC1(pkt) < sizeof(*hdr)) {
		FUNC2(sc->hn_ifp, "invalid nvs notify\n");
		return;
	}
	hdr = FUNC0(pkt);

	if (hdr->nvs_type == HN_NVS_TYPE_TXTBL_NOTE) {
		/* Useless; ignore */
		return;
	}
	FUNC2(sc->hn_ifp, "got notify, nvs type %u\n", hdr->nvs_type);
}