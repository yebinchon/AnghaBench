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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sge_iq {int dummy; } ;
struct TYPE_3__ {struct sge_iq fwq; } ;
struct adapter {int flags; int intr_count; int /*<<< orphan*/  ctx; int /*<<< orphan*/  dev; TYPE_2__** port; TYPE_1__ sge; } ;
struct TYPE_4__ {int /*<<< orphan*/ * vi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  FW_IQ_QSIZE ; 
 int IS_VF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sysctl_oid*,struct sge_iq*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sge_iq*,int /*<<< orphan*/ *,int,int) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sge_iq*,struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct adapter *sc)
{
	int rc, intr_idx;
	struct sge_iq *fwq = &sc->sge.fwq;
	struct sysctl_oid *oid = FUNC4(sc->dev);
	struct sysctl_oid_list *children = FUNC1(oid);

	FUNC6(fwq, sc, 0, 0, FW_IQ_QSIZE);
	if (sc->flags & IS_VF)
		intr_idx = 0;
	else
		intr_idx = sc->intr_count > 1 ? 1 : 0;
	rc = FUNC3(&sc->port[0]->vi[0], fwq, NULL, intr_idx, -1);
	if (rc != 0) {
		FUNC5(sc->dev,
		    "failed to create firmware event queue: %d\n", rc);
		return (rc);
	}

	oid = FUNC0(&sc->ctx, children, OID_AUTO, "fwq", CTLFLAG_RD,
	    NULL, "firmware event queue");
	FUNC2(&sc->ctx, oid, fwq);

	return (0);
}