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
struct mwl_hal_priv {int /*<<< orphan*/  mh_mtx; int /*<<< orphan*/  mh_dmat; int /*<<< orphan*/  mh_dmamap; int /*<<< orphan*/  mh_cmdbuf; } ;
struct mwl_hal {int dummy; } ;

/* Variables and functions */
 struct mwl_hal_priv* FUNC0 (struct mwl_hal*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_hal_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct mwl_hal *mh0)
{
	struct mwl_hal_priv *mh = FUNC0(mh0);

	FUNC2(mh->mh_dmat, mh->mh_cmdbuf, mh->mh_dmamap);
	FUNC1(mh->mh_dmat);
	FUNC4(&mh->mh_mtx);
	FUNC3(mh, M_DEVBUF);
}