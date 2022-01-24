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
typedef  int /*<<< orphan*/  uint32_t ;
struct sbuf {int dummy; } ;
struct TYPE_2__ {int cim_la_size; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_UP_UP_DBG_LA_CFG ; 
 scalar_t__ CHELSIO_T6 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,struct sbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct sbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct adapter *sc, struct sbuf *sb, int flags)
{
	uint32_t cfg, *buf;
	int rc;

	rc = -FUNC6(sc, A_UP_UP_DBG_LA_CFG, 1, &cfg);
	if (rc != 0)
		return (rc);

	FUNC0(flags == M_WAITOK || flags == M_NOWAIT);
	buf = FUNC3(sc->params.cim_la_size * sizeof(uint32_t), M_CXGBE,
	    M_ZERO | flags);
	if (buf == NULL)
		return (ENOMEM);

	rc = -FUNC7(sc, buf, NULL);
	if (rc != 0)
		goto done;
	if (FUNC1(sc) < CHELSIO_T6)
		FUNC4(sc, sb, buf, cfg);
	else
		FUNC5(sc, sb, buf, cfg);

done:
	FUNC2(buf, M_CXGBE);
	return (rc);
}