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
struct malo_hal {int /*<<< orphan*/  mh_mtx; int /*<<< orphan*/  mh_dmat; int /*<<< orphan*/  mh_dmamap; int /*<<< orphan*/  mh_cmdbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct malo_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct malo_hal *mh)
{

	FUNC1(mh->mh_dmat, mh->mh_cmdbuf, mh->mh_dmamap);
	FUNC0(mh->mh_dmat);
	FUNC3(&mh->mh_mtx);
	FUNC2(mh, M_DEVBUF);
}