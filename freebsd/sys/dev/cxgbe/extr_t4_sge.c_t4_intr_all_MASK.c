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
struct sge_iq {int dummy; } ;
struct TYPE_2__ {struct sge_iq fwq; } ;
struct adapter {int intr_count; scalar_t__ intr_type; TYPE_1__ sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_PF_CLI ; 
 scalar_t__ INTR_INTX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sge_iq*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void *arg)
{
	struct adapter *sc = arg;
	struct sge_iq *fwq = &sc->sge.fwq;

	FUNC0(sc->intr_count == 1);

	if (sc->intr_type == INTR_INTX)
		FUNC4(sc, FUNC1(A_PCIE_PF_CLI), 0);

	FUNC2(arg);
	FUNC3(fwq);
}