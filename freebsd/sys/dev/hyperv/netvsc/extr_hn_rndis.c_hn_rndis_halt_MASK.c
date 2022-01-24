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
struct vmbus_xact {int dummy; } ;
struct rndis_halt_req {int rm_len; int /*<<< orphan*/  rm_rid; int /*<<< orphan*/  rm_type; } ;
struct hn_softc {int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_xact; } ;
struct hn_nvs_sendctx {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  REMOTE_NDIS_HALT_MSG ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (struct hn_nvs_sendctx*,int /*<<< orphan*/ ,struct vmbus_xact*) ; 
 int /*<<< orphan*/  hn_nvs_sent_xact ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*,struct vmbus_xact*,int,struct hn_nvs_sendctx*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct vmbus_xact* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_xact*) ; 
 struct rndis_halt_req* FUNC6 (struct vmbus_xact*) ; 

__attribute__((used)) static int
FUNC7(struct hn_softc *sc)
{
	struct vmbus_xact *xact;
	struct rndis_halt_req *halt;
	struct hn_nvs_sendctx sndc;
	size_t comp_len;

	xact = FUNC4(sc->hn_xact, sizeof(*halt));
	if (xact == NULL) {
		FUNC3(sc->hn_ifp, "no xact for RNDIS halt\n");
		return (ENXIO);
	}
	halt = FUNC6(xact);
	halt->rm_type = REMOTE_NDIS_HALT_MSG;
	halt->rm_len = sizeof(*halt);
	halt->rm_rid = FUNC1(sc);

	/* No RNDIS completion; rely on NVS message send completion */
	FUNC0(&sndc, hn_nvs_sent_xact, xact);
	FUNC2(sc, xact, sizeof(*halt), &sndc, &comp_len);

	FUNC5(xact);
	if (bootverbose)
		FUNC3(sc->hn_ifp, "RNDIS halt done\n");
	return (0);
}