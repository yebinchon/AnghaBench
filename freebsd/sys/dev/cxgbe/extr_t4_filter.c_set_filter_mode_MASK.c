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
typedef  int uint32_t ;
struct tp_params {int ingress_config; } ;
struct TYPE_3__ {scalar_t__ ftids_in_use; scalar_t__ hpftids_in_use; } ;
struct TYPE_4__ {struct tp_params tp; } ;
struct adapter {TYPE_1__ tids; TYPE_2__ params; } ;

/* Variables and functions */
 int EBUSY ; 
 int F_VNIC ; 
 int HOLD_LOCK ; 
 int INTR_OK ; 
 int /*<<< orphan*/  LOCK_HELD ; 
 int SLEEP_OK ; 
 int /*<<< orphan*/  ULD_TOM ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct adapter*,int,int) ; 
 scalar_t__ FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct adapter *sc, uint32_t mode)
{
	struct tp_params *tpp = &sc->params.tp;
	uint32_t fconf, iconf;
	int rc;

	iconf = FUNC3(mode);
	if ((iconf ^ tpp->ingress_config) & F_VNIC) {
		/*
		 * For now we just complain if A_TP_INGRESS_CONFIG is not
		 * already set to the correct value for the requested filter
		 * mode.  It's not clear if it's safe to write to this register
		 * on the fly.  (And we trust the cached value of the register).
		 *
		 * check_fspec_against_fconf_iconf and other code that looks at
		 * tp->vlan_pri_map and tp->ingress_config needs to be reviewed
		 * thorougly before allowing dynamic filter mode changes.
		 */
		return (EBUSY);
	}

	fconf = FUNC2(mode);

	rc = FUNC0(sc, NULL, HOLD_LOCK | SLEEP_OK | INTR_OK,
	    "t4setfm");
	if (rc)
		return (rc);

	if (sc->tids.ftids_in_use > 0 || sc->tids.hpftids_in_use > 0) {
		rc = EBUSY;
		goto done;
	}

#ifdef TCP_OFFLOAD
	if (uld_active(sc, ULD_TOM)) {
		rc = EBUSY;
		goto done;
	}
#endif

	rc = -FUNC4(sc, fconf, true);
done:
	FUNC1(sc, LOCK_HELD);
	return (rc);
}