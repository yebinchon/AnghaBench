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
struct wrqe {int dummy; } ;
struct sge_wrq {int dummy; } ;
struct cpl_tid_release {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_TID_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_tid_release*,int /*<<< orphan*/ ,int) ; 
 struct wrqe* FUNC1 (int,struct sge_wrq*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct wrqe*) ; 
 struct cpl_tid_release* FUNC4 (struct wrqe*) ; 

void
FUNC5(struct adapter *sc, int tid, struct sge_wrq *ctrlq)
{
	struct wrqe *wr;
	struct cpl_tid_release *req;

	wr = FUNC1(sizeof(*req), ctrlq);
	if (wr == NULL) {
		FUNC2(sc, tid);	/* defer */
		return;
	}
	req = FUNC4(wr);

	FUNC0(req, CPL_TID_RELEASE, tid);

	FUNC3(sc, wr);
}