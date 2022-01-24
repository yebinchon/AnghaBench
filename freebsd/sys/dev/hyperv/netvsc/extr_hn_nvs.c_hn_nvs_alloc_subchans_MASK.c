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
typedef  int uint32_t ;
struct vmbus_xact {int dummy; } ;
struct hn_softc {int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_xact; } ;
struct hn_nvs_subch_resp {scalar_t__ nvs_status; int nvs_nsubch; } ;
struct hn_nvs_subch_req {int nvs_nsubch; int /*<<< orphan*/  nvs_op; int /*<<< orphan*/  nvs_type; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 scalar_t__ HN_NVS_STATUS_OK ; 
 int /*<<< orphan*/  HN_NVS_SUBCH_OP_ALLOC ; 
 int /*<<< orphan*/  HN_NVS_TYPE_SUBCH_REQ ; 
 int /*<<< orphan*/  HN_NVS_TYPE_SUBCH_RESP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct hn_nvs_subch_resp* FUNC1 (struct hn_softc*,struct vmbus_xact*,struct hn_nvs_subch_req*,int,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct vmbus_xact* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_xact*) ; 
 struct hn_nvs_subch_req* FUNC5 (struct vmbus_xact*) ; 

int
FUNC6(struct hn_softc *sc, int *nsubch0)
{
	struct vmbus_xact *xact;
	struct hn_nvs_subch_req *req;
	const struct hn_nvs_subch_resp *resp;
	int error, nsubch_req;
	uint32_t nsubch;
	size_t resp_len;

	nsubch_req = *nsubch0;
	FUNC0(nsubch_req > 0, ("invalid # of sub-channels %d", nsubch_req));

	xact = FUNC3(sc->hn_xact, sizeof(*req));
	if (xact == NULL) {
		FUNC2(sc->hn_ifp, "no xact for nvs subch alloc\n");
		return (ENXIO);
	}
	req = FUNC5(xact);
	req->nvs_type = HN_NVS_TYPE_SUBCH_REQ;
	req->nvs_op = HN_NVS_SUBCH_OP_ALLOC;
	req->nvs_nsubch = nsubch_req;

	resp_len = sizeof(*resp);
	resp = FUNC1(sc, xact, req, sizeof(*req), &resp_len,
	    HN_NVS_TYPE_SUBCH_RESP);
	if (resp == NULL) {
		FUNC2(sc->hn_ifp, "exec nvs subch alloc failed\n");
		error = EIO;
		goto done;
	}
	if (resp->nvs_status != HN_NVS_STATUS_OK) {
		FUNC2(sc->hn_ifp, "nvs subch alloc failed: %x\n",
		    resp->nvs_status);
		error = EIO;
		goto done;
	}

	nsubch = resp->nvs_nsubch;
	if (nsubch > nsubch_req) {
		FUNC2(sc->hn_ifp, "%u subchans are allocated, "
		    "requested %d\n", nsubch, nsubch_req);
		nsubch = nsubch_req;
	}
	*nsubch0 = nsubch;
	error = 0;
done:
	FUNC4(xact);
	return (error);
}