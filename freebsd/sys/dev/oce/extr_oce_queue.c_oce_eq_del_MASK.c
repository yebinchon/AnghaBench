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
struct oce_mbx {int /*<<< orphan*/  payload; } ;
struct oce_eq {int eq_id; int /*<<< orphan*/ * ring; int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct mbx_destroy_common_eq {TYPE_2__ params; } ;
typedef  int /*<<< orphan*/  mbx ;
typedef  int /*<<< orphan*/  POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  QTYPE_EQ ; 
 int /*<<< orphan*/  FUNC0 (struct oce_mbx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oce_eq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct oce_mbx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct oce_eq *eq)
{
	struct oce_mbx mbx;
	struct mbx_destroy_common_eq *fwcmd;
	POCE_SOFTC sc = (POCE_SOFTC) eq->parent;

	if (eq->eq_id != 0xffff) {
		FUNC0(&mbx, sizeof(mbx));
		fwcmd = (struct mbx_destroy_common_eq *)&mbx.payload;
		fwcmd->params.req.id = eq->eq_id;
		(void)FUNC2(sc, &mbx,
			sizeof(struct mbx_destroy_common_eq), QTYPE_EQ, 0);
	}

	if (eq->ring != NULL) {
		FUNC3(sc, eq->ring);
		eq->ring = NULL;
	}

	FUNC1(eq, M_DEVBUF);

}