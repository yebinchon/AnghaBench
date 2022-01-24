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
struct sge_fl {int qsize; int sidx; int /*<<< orphan*/  flags; int /*<<< orphan*/  lockname; } ;
struct TYPE_3__ {int spg_len; } ;
struct TYPE_4__ {TYPE_1__ sge; } ;
struct adapter {int flags; TYPE_2__ params; } ;

/* Variables and functions */
 int BUF_PACKING_OK ; 
 int EQ_ESIZE ; 
 int /*<<< orphan*/  FL_BUF_PACKING ; 
 int buffer_packing ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct sge_fl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct sge_fl*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline void
FUNC4(struct adapter *sc, struct sge_fl *fl, int qsize, int maxp, char *name)
{

	fl->qsize = qsize;
	fl->sidx = qsize - sc->params.sge.spg_len / EQ_ESIZE;
	FUNC3(fl->lockname, name, sizeof(fl->lockname));
	if (sc->flags & BUF_PACKING_OK &&
	    ((!FUNC2(sc) && buffer_packing) ||	/* T5+: enabled unless 0 */
	    (FUNC2(sc) && buffer_packing == 1)))/* T4: disabled unless 1 */
		fl->flags |= FL_BUF_PACKING;
	FUNC0(sc, fl, maxp);
	FUNC1(sc, fl);
}