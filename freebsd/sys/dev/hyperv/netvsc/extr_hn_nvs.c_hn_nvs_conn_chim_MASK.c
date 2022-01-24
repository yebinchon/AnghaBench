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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_long ;
struct vmbus_xact {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hv_paddr; } ;
struct hn_softc {int hn_chim_szmax; int hn_chim_cnt; int hn_chim_bmap_cnt; int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_flags; int /*<<< orphan*/  hn_chim_bmap; int /*<<< orphan*/  hn_chim_gpadl; int /*<<< orphan*/  hn_xact; TYPE_1__ hn_chim_dma; int /*<<< orphan*/  hn_prichan; } ;
struct hn_nvs_chim_connresp {int nvs_status; int nvs_sectsz; } ;
struct hn_nvs_chim_conn {int /*<<< orphan*/  nvs_sig; int /*<<< orphan*/  nvs_gpadl; int /*<<< orphan*/  nvs_type; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int HN_CHIM_SIZE ; 
 int /*<<< orphan*/  HN_FLAG_CHIM_CONNECTED ; 
 int /*<<< orphan*/  HN_NVS_CHIM_SIG ; 
 int HN_NVS_STATUS_OK ; 
 int /*<<< orphan*/  HN_NVS_TYPE_CHIM_CONN ; 
 int /*<<< orphan*/  HN_NVS_TYPE_CHIM_CONNRESP ; 
 int LONG_BIT ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 struct hn_nvs_chim_connresp* FUNC1 (struct hn_softc*,struct vmbus_xact*,struct hn_nvs_chim_conn*,int,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct vmbus_xact* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vmbus_xact*) ; 
 struct hn_nvs_chim_conn* FUNC7 (struct vmbus_xact*) ; 

__attribute__((used)) static int 
FUNC8(struct hn_softc *sc)
{
	struct vmbus_xact *xact = NULL;
	struct hn_nvs_chim_conn *chim;
	const struct hn_nvs_chim_connresp *resp;
	size_t resp_len;
	uint32_t status, sectsz;
	int error;

	/*
	 * Connect chimney sending buffer GPADL to the primary channel.
	 *
	 * NOTE:
	 * Only primary channel has chimney sending buffer connected to it.
	 * Sub-channels just share this chimney sending buffer.
	 */
	error = FUNC4(sc->hn_prichan,
  	    sc->hn_chim_dma.hv_paddr, HN_CHIM_SIZE, &sc->hn_chim_gpadl);
	if (error) {
		FUNC2(sc->hn_ifp, "chim gpadl conn failed: %d\n", error);
		goto cleanup;
	}

	/*
	 * Connect chimney sending buffer to NVS
	 */

	xact = FUNC5(sc->hn_xact, sizeof(*chim));
	if (xact == NULL) {
		FUNC2(sc->hn_ifp, "no xact for nvs chim conn\n");
		error = ENXIO;
		goto cleanup;
	}
	chim = FUNC7(xact);
	chim->nvs_type = HN_NVS_TYPE_CHIM_CONN;
	chim->nvs_gpadl = sc->hn_chim_gpadl;
	chim->nvs_sig = HN_NVS_CHIM_SIG;

	resp_len = sizeof(*resp);
	resp = FUNC1(sc, xact, chim, sizeof(*chim), &resp_len,
	    HN_NVS_TYPE_CHIM_CONNRESP);
	if (resp == NULL) {
		FUNC2(sc->hn_ifp, "exec nvs chim conn failed\n");
		error = EIO;
		goto cleanup;
	}

	status = resp->nvs_status;
	sectsz = resp->nvs_sectsz;
	FUNC6(xact);
	xact = NULL;

	if (status != HN_NVS_STATUS_OK) {
		FUNC2(sc->hn_ifp, "nvs chim conn failed: %x\n", status);
		error = EIO;
		goto cleanup;
	}
	if (sectsz == 0 || sectsz % sizeof(uint32_t) != 0) {
		/*
		 * Can't use chimney sending buffer; done!
		 */
		if (sectsz == 0) {
			FUNC2(sc->hn_ifp, "zero chimney sending buffer "
			    "section size\n");
		} else {
			FUNC2(sc->hn_ifp, "misaligned chimney sending "
			    "buffers, section size: %u\n", sectsz);
		}
		sc->hn_chim_szmax = 0;
		sc->hn_chim_cnt = 0;
		sc->hn_flags |= HN_FLAG_CHIM_CONNECTED;
		return (0);
	}

	sc->hn_chim_szmax = sectsz;
	sc->hn_chim_cnt = HN_CHIM_SIZE / sc->hn_chim_szmax;
	if (HN_CHIM_SIZE % sc->hn_chim_szmax != 0) {
		FUNC2(sc->hn_ifp, "chimney sending sections are "
		    "not properly aligned\n");
	}
	if (sc->hn_chim_cnt % LONG_BIT != 0) {
		FUNC2(sc->hn_ifp, "discard %d chimney sending sections\n",
		    sc->hn_chim_cnt % LONG_BIT);
	}

	sc->hn_chim_bmap_cnt = sc->hn_chim_cnt / LONG_BIT;
	sc->hn_chim_bmap = FUNC3(sc->hn_chim_bmap_cnt * sizeof(u_long),
	    M_DEVBUF, M_WAITOK | M_ZERO);

	/* Done! */
	sc->hn_flags |= HN_FLAG_CHIM_CONNECTED;
	if (bootverbose) {
		FUNC2(sc->hn_ifp, "chimney sending buffer %d/%d\n",
		    sc->hn_chim_szmax, sc->hn_chim_cnt);
	}
	return (0);

cleanup:
	if (xact != NULL)
		FUNC6(xact);
	FUNC0(sc);
	return (error);
}