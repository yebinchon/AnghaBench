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
typedef  scalar_t__ uint32_t ;
struct vmbus_xact {int dummy; } ;
struct hn_softc {int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_xact; } ;
struct hn_nvs_init_resp {scalar_t__ nvs_status; } ;
struct hn_nvs_init {scalar_t__ nvs_ver_max; scalar_t__ nvs_ver_min; int /*<<< orphan*/  nvs_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 scalar_t__ HN_NVS_STATUS_OK ; 
 int /*<<< orphan*/  HN_NVS_TYPE_INIT ; 
 int /*<<< orphan*/  HN_NVS_TYPE_INIT_RESP ; 
 scalar_t__ bootverbose ; 
 struct hn_nvs_init_resp* FUNC0 (struct hn_softc*,struct vmbus_xact*,struct hn_nvs_init*,int,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct vmbus_xact* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_xact*) ; 
 struct hn_nvs_init* FUNC4 (struct vmbus_xact*) ; 

__attribute__((used)) static int
FUNC5(struct hn_softc *sc, uint32_t nvs_ver)
{
	struct vmbus_xact *xact;
	struct hn_nvs_init *init;
	const struct hn_nvs_init_resp *resp;
	size_t resp_len;
	uint32_t status;

	xact = FUNC2(sc->hn_xact, sizeof(*init));
	if (xact == NULL) {
		FUNC1(sc->hn_ifp, "no xact for nvs init\n");
		return (ENXIO);
	}
	init = FUNC4(xact);
	init->nvs_type = HN_NVS_TYPE_INIT;
	init->nvs_ver_min = nvs_ver;
	init->nvs_ver_max = nvs_ver;

	resp_len = sizeof(*resp);
	resp = FUNC0(sc, xact, init, sizeof(*init), &resp_len,
	    HN_NVS_TYPE_INIT_RESP);
	if (resp == NULL) {
		FUNC1(sc->hn_ifp, "exec init failed\n");
		FUNC3(xact);
		return (EIO);
	}

	status = resp->nvs_status;
	FUNC3(xact);

	if (status != HN_NVS_STATUS_OK) {
		if (bootverbose) {
			/*
			 * Caller may try another NVS version, and will log
			 * error if there are no more NVS versions to try,
			 * so don't bark out loud here.
			 */
			FUNC1(sc->hn_ifp, "nvs init failed for ver 0x%x\n",
			    nvs_ver);
		}
		return (EINVAL);
	}
	return (0);
}