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
struct vmbus_xact {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hv_paddr; } ;
struct hn_softc {scalar_t__ hn_nvs_ver; int /*<<< orphan*/  hn_flags; int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_rxbuf_gpadl; int /*<<< orphan*/  hn_xact; TYPE_1__ hn_rxbuf_dma; int /*<<< orphan*/  hn_prichan; } ;
struct hn_nvs_rxbuf_connresp {int nvs_status; } ;
struct hn_nvs_rxbuf_conn {int /*<<< orphan*/  nvs_sig; int /*<<< orphan*/  nvs_gpadl; int /*<<< orphan*/  nvs_type; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  HN_FLAG_RXBUF_CONNECTED ; 
 int /*<<< orphan*/  HN_NVS_RXBUF_SIG ; 
 int HN_NVS_STATUS_OK ; 
 int /*<<< orphan*/  HN_NVS_TYPE_RXBUF_CONN ; 
 int /*<<< orphan*/  HN_NVS_TYPE_RXBUF_CONNRESP ; 
 scalar_t__ HN_NVS_VERSION_2 ; 
 int HN_RXBUF_SIZE ; 
 int HN_RXBUF_SIZE_COMPAT ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 struct hn_nvs_rxbuf_connresp* FUNC1 (struct hn_softc*,struct vmbus_xact*,struct hn_nvs_rxbuf_conn*,int,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct vmbus_xact* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_xact*) ; 
 struct hn_nvs_rxbuf_conn* FUNC6 (struct vmbus_xact*) ; 

__attribute__((used)) static int 
FUNC7(struct hn_softc *sc)
{
	struct vmbus_xact *xact = NULL;
	struct hn_nvs_rxbuf_conn *conn;
	const struct hn_nvs_rxbuf_connresp *resp;
	size_t resp_len;
	uint32_t status;
	int error, rxbuf_size;

	/*
	 * Limit RXBUF size for old NVS.
	 */
	if (sc->hn_nvs_ver <= HN_NVS_VERSION_2)
		rxbuf_size = HN_RXBUF_SIZE_COMPAT;
	else
		rxbuf_size = HN_RXBUF_SIZE;

	/*
	 * Connect the RXBUF GPADL to the primary channel.
	 *
	 * NOTE:
	 * Only primary channel has RXBUF connected to it.  Sub-channels
	 * just share this RXBUF.
	 */
	error = FUNC3(sc->hn_prichan,
	    sc->hn_rxbuf_dma.hv_paddr, rxbuf_size, &sc->hn_rxbuf_gpadl);
	if (error) {
		FUNC2(sc->hn_ifp, "rxbuf gpadl conn failed: %d\n",
		    error);
		goto cleanup;
	}

	/*
	 * Connect RXBUF to NVS.
	 */

	xact = FUNC4(sc->hn_xact, sizeof(*conn));
	if (xact == NULL) {
		FUNC2(sc->hn_ifp, "no xact for nvs rxbuf conn\n");
		error = ENXIO;
		goto cleanup;
	}
	conn = FUNC6(xact);
	conn->nvs_type = HN_NVS_TYPE_RXBUF_CONN;
	conn->nvs_gpadl = sc->hn_rxbuf_gpadl;
	conn->nvs_sig = HN_NVS_RXBUF_SIG;

	resp_len = sizeof(*resp);
	resp = FUNC1(sc, xact, conn, sizeof(*conn), &resp_len,
	    HN_NVS_TYPE_RXBUF_CONNRESP);
	if (resp == NULL) {
		FUNC2(sc->hn_ifp, "exec nvs rxbuf conn failed\n");
		error = EIO;
		goto cleanup;
	}

	status = resp->nvs_status;
	FUNC5(xact);
	xact = NULL;

	if (status != HN_NVS_STATUS_OK) {
		FUNC2(sc->hn_ifp, "nvs rxbuf conn failed: %x\n", status);
		error = EIO;
		goto cleanup;
	}
	sc->hn_flags |= HN_FLAG_RXBUF_CONNECTED;

	return (0);

cleanup:
	if (xact != NULL)
		FUNC5(xact);
	FUNC0(sc);
	return (error);
}