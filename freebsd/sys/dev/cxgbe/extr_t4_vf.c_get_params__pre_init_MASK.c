#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_3__ {void* cclk; } ;
struct TYPE_4__ {void* tp_vers; void* fw_vers; TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; int /*<<< orphan*/  tp_version; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCLK ; 
 int /*<<< orphan*/  FWREV ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  TPREV ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int,int,int,int) ; 
 int FUNC8 (struct adapter*,int /*<<< orphan*/ ,void**,void**) ; 

__attribute__((used)) static int
FUNC9(struct adapter *sc)
{
	int rc;
	uint32_t param[3], val[3];

	param[0] = FUNC0(FWREV);
	param[1] = FUNC0(TPREV);
	param[2] = FUNC0(CCLK);
	rc = -FUNC8(sc, FUNC6(param), param, val);
	if (rc != 0) {
		FUNC5(sc->dev,
		    "failed to query parameters (pre_init): %d.\n", rc);
		return (rc);
	}

	sc->params.fw_vers = val[0];
	sc->params.tp_vers = val[1];
	sc->params.vpd.cclk = val[2];

	FUNC7(sc->fw_version, sizeof(sc->fw_version), "%u.%u.%u.%u",
	    FUNC2(sc->params.fw_vers),
	    FUNC4(sc->params.fw_vers),
	    FUNC3(sc->params.fw_vers),
	    FUNC1(sc->params.fw_vers));

	FUNC7(sc->tp_version, sizeof(sc->tp_version), "%u.%u.%u.%u",
	    FUNC2(sc->params.tp_vers),
	    FUNC4(sc->params.tp_vers),
	    FUNC3(sc->params.tp_vers),
	    FUNC1(sc->params.tp_vers));

	return (0);
}