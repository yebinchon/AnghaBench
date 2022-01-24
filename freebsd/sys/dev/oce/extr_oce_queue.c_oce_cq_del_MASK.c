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
struct oce_cq {int /*<<< orphan*/ * ring; int /*<<< orphan*/  cq_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {TYPE_2__ req; } ;
struct mbx_destroy_common_cq {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  QTYPE_CQ ; 
 int /*<<< orphan*/  FUNC0 (struct oce_mbx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oce_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct oce_mbx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC4(POCE_SOFTC sc, struct oce_cq *cq)
{
	struct oce_mbx mbx;
	struct mbx_destroy_common_cq *fwcmd;

	if (cq->ring != NULL) {

		FUNC0(&mbx, sizeof(struct oce_mbx));
		/* now fill the command */
		fwcmd = (struct mbx_destroy_common_cq *)&mbx.payload;
		fwcmd->params.req.id = cq->cq_id;
		(void)FUNC2(sc, &mbx,
			sizeof(struct mbx_destroy_common_cq), QTYPE_CQ, 0);
		/*NOW destroy the ring */
		FUNC3(sc, cq->ring);
		cq->ring = NULL;
	}

	FUNC1(cq, M_DEVBUF);
	cq = NULL;
}