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
struct vi_info {int /*<<< orphan*/  dev; } ;
struct sge_iq {int flags; int cntxt_id; int /*<<< orphan*/  fl_lock; scalar_t__ sdesc; int /*<<< orphan*/  desc; int /*<<< orphan*/  ba; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; struct adapter* adapter; } ;
struct sge_fl {int flags; int cntxt_id; int /*<<< orphan*/  fl_lock; scalar_t__ sdesc; int /*<<< orphan*/  desc; int /*<<< orphan*/  ba; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; struct adapter* adapter; } ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FW_IQ_TYPE_FL_INT_CAP ; 
 int IQ_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (struct sge_iq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct sge_iq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct sge_iq*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC7(struct vi_info *vi, struct sge_iq *iq, struct sge_fl *fl)
{
	int rc;
	struct adapter *sc = iq->adapter;
	device_t dev;

	if (sc == NULL)
		return (0);	/* nothing to do */

	dev = vi ? vi->dev : sc->dev;

	if (iq->flags & IQ_ALLOCATED) {
		rc = -FUNC6(sc, sc->mbox, sc->pf, 0,
		    FW_IQ_TYPE_FL_INT_CAP, iq->cntxt_id,
		    fl ? fl->cntxt_id : 0xffff, 0xffff);
		if (rc != 0) {
			FUNC1(dev,
			    "failed to free queue %p: %d\n", iq, rc);
			return (rc);
		}
		iq->flags &= ~IQ_ALLOCATED;
	}

	FUNC3(sc, iq->desc_tag, iq->desc_map, iq->ba, iq->desc);

	FUNC0(iq, sizeof(*iq));

	if (fl) {
		FUNC3(sc, fl->desc_tag, fl->desc_map, fl->ba,
		    fl->desc);

		if (fl->sdesc)
			FUNC2(sc, fl);

		if (FUNC5(&fl->fl_lock))
			FUNC4(&fl->fl_lock);

		FUNC0(fl, sizeof(*fl));
	}

	return (0);
}