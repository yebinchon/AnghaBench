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
typedef  scalar_t__ uint32_t ;
struct sge_fl {int pidx; scalar_t__ dbval; int /*<<< orphan*/  sidx; int /*<<< orphan*/  dbidx; int /*<<< orphan*/ * udb; } ;
struct adapter {int /*<<< orphan*/  sge_kdoorbell_reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static inline void
FUNC7(struct adapter *sc, struct sge_fl *fl)
{
	uint32_t n, v;

	n = FUNC0(fl->pidx / 8, fl->dbidx, fl->sidx);
	FUNC2(n > 0);

	FUNC6();
	v = fl->dbval | FUNC3(n);
	if (fl->udb)
		*fl->udb = FUNC4(v);
	else
		FUNC5(sc, sc->sge_kdoorbell_reg, v);
	FUNC1(fl->dbidx, n, fl->sidx);
}