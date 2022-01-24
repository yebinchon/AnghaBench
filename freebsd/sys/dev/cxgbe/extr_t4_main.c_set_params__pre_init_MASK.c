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
struct TYPE_2__ {int fw_vers; int viid_smt_extn_support; } ;
struct adapter {TYPE_1__ params; int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHELSIO_T6 ; 
 int FW_EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPFILTER_REGION_SUPPORT ; 
 int /*<<< orphan*/  OPAQUE_VIID_SMT_EXTN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 

__attribute__((used)) static int
FUNC8(struct adapter *sc)
{
	int rc = 0;
	uint32_t param, val;

	if (FUNC5(sc) >= CHELSIO_T6) {
		param = FUNC0(HPFILTER_REGION_SUPPORT);
		val = 1;
		rc = -FUNC7(sc, sc->mbox, sc->pf, 0, 1, &param, &val);
		/* firmwares < 1.20.1.0 do not have this param. */
		if (rc == FW_EINVAL && sc->params.fw_vers <
		    (FUNC2(1) | FUNC4(20) |
		    FUNC3(1) | FUNC1(0))) {
			rc = 0;
		}
		if (rc != 0) {
			FUNC6(sc->dev,
			    "failed to enable high priority filters :%d.\n",
			    rc);
		}
	}

	/* Enable opaque VIIDs with firmwares that support it. */
	param = FUNC0(OPAQUE_VIID_SMT_EXTN);
	val = 1;
	rc = -FUNC7(sc, sc->mbox, sc->pf, 0, 1, &param, &val);
	if (rc == 0 && val == 1)
		sc->params.viid_smt_extn_support = true;
	else
		sc->params.viid_smt_extn_support = false;

	return (rc);
}