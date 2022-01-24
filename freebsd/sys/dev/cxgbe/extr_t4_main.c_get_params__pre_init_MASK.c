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
struct TYPE_4__ {TYPE_1__ vpd; int /*<<< orphan*/  nports; void* portvec; int /*<<< orphan*/  er_vers; int /*<<< orphan*/  tp_vers; int /*<<< orphan*/  bs_vers; int /*<<< orphan*/  fw_vers; } ;
struct adapter {int /*<<< orphan*/  dev; TYPE_2__ params; int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; int /*<<< orphan*/  er_version; int /*<<< orphan*/  tp_version; int /*<<< orphan*/  bs_version; int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCLK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORTVEC ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int FUNC10 (struct adapter*,int) ; 
 int FUNC11 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void**,void**) ; 

__attribute__((used)) static int
FUNC12(struct adapter *sc)
{
	int rc;
	uint32_t param[2], val[2];

	FUNC9(sc);

	FUNC8(sc->fw_version, sizeof(sc->fw_version), "%u.%u.%u.%u",
	    FUNC2(sc->params.fw_vers),
	    FUNC4(sc->params.fw_vers),
	    FUNC3(sc->params.fw_vers),
	    FUNC1(sc->params.fw_vers));

	FUNC8(sc->bs_version, sizeof(sc->bs_version), "%u.%u.%u.%u",
	    FUNC2(sc->params.bs_vers),
	    FUNC4(sc->params.bs_vers),
	    FUNC3(sc->params.bs_vers),
	    FUNC1(sc->params.bs_vers));

	FUNC8(sc->tp_version, sizeof(sc->tp_version), "%u.%u.%u.%u",
	    FUNC2(sc->params.tp_vers),
	    FUNC4(sc->params.tp_vers),
	    FUNC3(sc->params.tp_vers),
	    FUNC1(sc->params.tp_vers));

	FUNC8(sc->er_version, sizeof(sc->er_version), "%u.%u.%u.%u",
	    FUNC2(sc->params.er_vers),
	    FUNC4(sc->params.er_vers),
	    FUNC3(sc->params.er_vers),
	    FUNC1(sc->params.er_vers));

	param[0] = FUNC0(PORTVEC);
	param[1] = FUNC0(CCLK);
	rc = -FUNC11(sc, sc->mbox, sc->pf, 0, 2, param, val);
	if (rc != 0) {
		FUNC6(sc->dev,
		    "failed to query parameters (pre_init): %d.\n", rc);
		return (rc);
	}

	sc->params.portvec = val[0];
	sc->params.nports = FUNC5(val[0]);
	sc->params.vpd.cclk = val[1];

	/* Read device log parameters. */
	rc = -FUNC10(sc, 1);
	if (rc == 0)
		FUNC7(sc);
	else {
		FUNC6(sc->dev,
		    "failed to get devlog parameters: %d.\n", rc);
		rc = 0;	/* devlog isn't critical for device operation */
	}

	return (rc);
}