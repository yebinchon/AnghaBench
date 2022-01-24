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
struct hn_softc {int hn_flags; scalar_t__ hn_chim_gpadl; scalar_t__ hn_chim_bmap_cnt; int /*<<< orphan*/ * hn_chim_bmap; int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_prichan; } ;
struct hn_nvs_chim_disconn {int /*<<< orphan*/  nvs_sig; int /*<<< orphan*/  nvs_type; } ;
typedef  int /*<<< orphan*/  disconn ;

/* Variables and functions */
 int HN_FLAG_CHIM_CONNECTED ; 
 int HN_FLAG_CHIM_REF ; 
 int /*<<< orphan*/  HN_NVS_CHIM_SIG ; 
 int /*<<< orphan*/  HN_NVS_TYPE_CHIM_DISCONN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ VMBUS_VERSION_WIN10 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hn_softc*,struct hn_nvs_chim_disconn*,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_nvs_chim_disconn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ vmbus_current_version ; 

__attribute__((used)) static void
FUNC8(struct hn_softc *sc)
{
	int error;

	if (sc->hn_flags & HN_FLAG_CHIM_CONNECTED) {
		struct hn_nvs_chim_disconn disconn;

		/*
		 * Disconnect chimney sending buffer from NVS.
		 */
		FUNC3(&disconn, 0, sizeof(disconn));
		disconn.nvs_type = HN_NVS_TYPE_CHIM_DISCONN;
		disconn.nvs_sig = HN_NVS_CHIM_SIG;

		/* NOTE: No response. */
		error = FUNC1(sc, &disconn, sizeof(disconn));
		if (error) {
			FUNC2(sc->hn_ifp,
			    "send nvs chim disconn failed: %d\n", error);
			/*
			 * Fine for a revoked channel, since the hypervisor
			 * does not drain TX bufring for a revoked channel.
			 */
			if (!FUNC6(sc->hn_prichan))
				sc->hn_flags |= HN_FLAG_CHIM_REF;
		}
		sc->hn_flags &= ~HN_FLAG_CHIM_CONNECTED;

		/*
		 * Wait for the hypervisor to receive this NVS request.
		 *
		 * NOTE:
		 * The TX bufring will not be drained by the hypervisor,
		 * if the primary channel is revoked.
		 */
		while (!FUNC7(sc->hn_prichan) &&
		    !FUNC6(sc->hn_prichan))
			FUNC4("waittx", 1);
		/*
		 * Linger long enough for NVS to disconnect chimney
		 * sending buffer.
		 */
		FUNC4("lingtx", (200 * hz) / 1000);
	}

	if (vmbus_current_version < VMBUS_VERSION_WIN10 && sc->hn_chim_gpadl != 0) {
		/*
		 * Disconnect chimney sending buffer from primary channel.
		 */
		error = FUNC5(sc->hn_prichan,
		    sc->hn_chim_gpadl);
		if (error) {
			FUNC2(sc->hn_ifp,
			    "chim gpadl disconn failed: %d\n", error);
			sc->hn_flags |= HN_FLAG_CHIM_REF;
		}
		sc->hn_chim_gpadl = 0;
	}

	if (sc->hn_chim_bmap != NULL) {
		FUNC0(sc->hn_chim_bmap, M_DEVBUF);
		sc->hn_chim_bmap = NULL;
		sc->hn_chim_bmap_cnt = 0;
	}
}