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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct isl_softc {int /*<<< orphan*/  isl_sx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD1_MASK_ALS_ONCE ; 
 int /*<<< orphan*/  CMD1_MASK_IR_ONCE ; 
 int /*<<< orphan*/  CMD1_MASK_PROX_ONCE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  ISL_METHOD_ALS ; 
 int /*<<< orphan*/  ISL_METHOD_IR ; 
 int /*<<< orphan*/  ISL_METHOD_PROX ; 
 int /*<<< orphan*/  ISL_METHOD_RANGE ; 
 int /*<<< orphan*/  ISL_METHOD_RESOLUTION ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct isl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 struct isl_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isl_sysctl ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct isl_softc *sc;
	struct sysctl_ctx_list *sysctl_ctx;
	struct sysctl_oid *sysctl_tree;
	int use_als;
	int use_ir;
	int use_prox;

	sc = FUNC2(dev);
	sc->dev = dev;

	if (FUNC5(dev, 0) != 0)
		return (ENXIO);

	FUNC7(&sc->isl_sx, "ISL read lock");

	sysctl_ctx = FUNC3(dev);
	sysctl_tree = FUNC4(dev);

	use_als = FUNC6(dev, CMD1_MASK_ALS_ONCE) >= 0;
	use_ir = FUNC6(dev, CMD1_MASK_IR_ONCE) >= 0;
	use_prox = FUNC6(dev, CMD1_MASK_PROX_ONCE) >= 0;

	if (use_als) {
		FUNC0(sysctl_ctx,
			FUNC1(sysctl_tree), OID_AUTO,
			    "als", CTLTYPE_INT | CTLFLAG_RD,
			    sc, ISL_METHOD_ALS, isl_sysctl, "I",
			    "Current ALS sensor read-out");
	}

	if (use_ir) {
		FUNC0(sysctl_ctx,
			FUNC1(sysctl_tree), OID_AUTO,
			    "ir", CTLTYPE_INT | CTLFLAG_RD,
			    sc, ISL_METHOD_IR, isl_sysctl, "I",
			    "Current IR sensor read-out");
	}

	if (use_prox) {
		FUNC0(sysctl_ctx,
			FUNC1(sysctl_tree), OID_AUTO,
			    "prox", CTLTYPE_INT | CTLFLAG_RD,
			    sc, ISL_METHOD_PROX, isl_sysctl, "I",
			    "Current proximity sensor read-out");
	}

	FUNC0(sysctl_ctx,
		FUNC1(sysctl_tree), OID_AUTO,
		    "resolution", CTLTYPE_INT | CTLFLAG_RD,
		    sc, ISL_METHOD_RESOLUTION, isl_sysctl, "I",
		    "Current proximity sensor resolution");

	FUNC0(sysctl_ctx,
	FUNC1(sysctl_tree), OID_AUTO,
	    "range", CTLTYPE_INT | CTLFLAG_RD,
	    sc, ISL_METHOD_RANGE, isl_sysctl, "I",
	    "Current proximity sensor range");

	return (0);
}