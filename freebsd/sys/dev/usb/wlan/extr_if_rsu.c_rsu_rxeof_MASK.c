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
struct usb_xfer {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/  ic_ierrors; } ;
struct rsu_softc {struct ieee80211com sc_ic; } ;
struct rsu_data {scalar_t__ buf; struct rsu_softc* sc; } ;
struct r92s_rx_stat {int /*<<< orphan*/  rxdw1; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSU_DEBUG_RX ; 
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rsu_softc*,scalar_t__,int) ; 
 struct mbuf* FUNC5 (struct rsu_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mbuf *
FUNC7(struct usb_xfer *xfer, struct rsu_data *data)
{
	struct rsu_softc *sc = data->sc;
	struct ieee80211com *ic = &sc->sc_ic;
	struct r92s_rx_stat *stat;
	int len;

	FUNC6(xfer, &len, NULL, NULL, NULL);

	if (FUNC1(len < sizeof(*stat))) {
		FUNC0(sc, RSU_DEBUG_RX, "xfer too short %d\n", len);
		FUNC2(ic->ic_ierrors, 1);
		return (NULL);
	}
	/* Determine if it is a firmware C2H event or an 802.11 frame. */
	stat = (struct r92s_rx_stat *)data->buf;
	if ((FUNC3(stat->rxdw1) & 0x1ff) == 0x1ff) {
		FUNC4(sc, data->buf, len);
		/* No packets to process. */
		return (NULL);
	} else
		return (FUNC5(sc, data->buf, len));
}