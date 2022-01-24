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
struct hn_softc {int hn_flags; scalar_t__ hn_rxbuf_gpadl; int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_prichan; } ;
struct hn_nvs_rxbuf_disconn {int /*<<< orphan*/  nvs_sig; int /*<<< orphan*/  nvs_type; } ;
typedef  int /*<<< orphan*/  disconn ;

/* Variables and functions */
 int HN_FLAG_RXBUF_CONNECTED ; 
 int HN_FLAG_RXBUF_REF ; 
 int /*<<< orphan*/  HN_NVS_RXBUF_SIG ; 
 int /*<<< orphan*/  HN_NVS_TYPE_RXBUF_DISCONN ; 
 scalar_t__ VMBUS_VERSION_WIN10 ; 
 int FUNC0 (struct hn_softc*,struct hn_nvs_rxbuf_disconn*,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_nvs_rxbuf_disconn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ vmbus_current_version ; 

__attribute__((used)) static void
FUNC7(struct hn_softc *sc)
{
	int error;

	if (sc->hn_flags & HN_FLAG_RXBUF_CONNECTED) {
		struct hn_nvs_rxbuf_disconn disconn;

		/*
		 * Disconnect RXBUF from NVS.
		 */
		FUNC2(&disconn, 0, sizeof(disconn));
		disconn.nvs_type = HN_NVS_TYPE_RXBUF_DISCONN;
		disconn.nvs_sig = HN_NVS_RXBUF_SIG;

		/* NOTE: No response. */
		error = FUNC0(sc, &disconn, sizeof(disconn));
		if (error) {
			FUNC1(sc->hn_ifp,
			    "send nvs rxbuf disconn failed: %d\n", error);
			/*
			 * Fine for a revoked channel, since the hypervisor
			 * does not drain TX bufring for a revoked channel.
			 */
			if (!FUNC5(sc->hn_prichan))
				sc->hn_flags |= HN_FLAG_RXBUF_REF;
		}
		sc->hn_flags &= ~HN_FLAG_RXBUF_CONNECTED;

		/*
		 * Wait for the hypervisor to receive this NVS request.
		 *
		 * NOTE:
		 * The TX bufring will not be drained by the hypervisor,
		 * if the primary channel is revoked.
		 */
		while (!FUNC6(sc->hn_prichan) &&
		    !FUNC5(sc->hn_prichan))
			FUNC3("waittx", 1);
		/*
		 * Linger long enough for NVS to disconnect RXBUF.
		 */
		FUNC3("lingtx", (200 * hz) / 1000);
	}

	if (vmbus_current_version < VMBUS_VERSION_WIN10 && sc->hn_rxbuf_gpadl != 0) {
		/*
		 * Disconnect RXBUF from primary channel.
		 */
		error = FUNC4(sc->hn_prichan,
		    sc->hn_rxbuf_gpadl);
		if (error) {
			FUNC1(sc->hn_ifp,
			    "rxbuf gpadl disconn failed: %d\n", error);
			sc->hn_flags |= HN_FLAG_RXBUF_REF;
		}
		sc->hn_rxbuf_gpadl = 0;
	}
}