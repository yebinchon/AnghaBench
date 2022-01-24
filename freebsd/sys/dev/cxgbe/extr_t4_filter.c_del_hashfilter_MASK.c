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
struct wrq_cookie {int dummy; } ;
struct tid_info {int ntids; int tid_base; int /*<<< orphan*/  hftid_lock; int /*<<< orphan*/  hftid_cv; int /*<<< orphan*/ * hftid_hash_4t; } ;
struct t4_filter {int const idx; int /*<<< orphan*/  fs; } ;
struct filter_entry {scalar_t__ valid; int const tid; int locked; int pending; int /*<<< orphan*/  fs; } ;
struct TYPE_3__ {int /*<<< orphan*/  abs_id; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ctrlq; TYPE_1__ fwq; } ;
struct adapter {TYPE_2__ sge; struct tid_info tids; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,struct wrq_cookie*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct filter_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int const,int) ; 
 struct filter_entry* FUNC6 (struct adapter*,int const) ; 
 int /*<<< orphan*/  FUNC7 (int const,void*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wrq_cookie*) ; 

__attribute__((used)) static int
FUNC11(struct adapter *sc, struct t4_filter *t)
{
	struct tid_info *ti = &sc->tids;
	void *wr;
	struct filter_entry *f;
	struct wrq_cookie cookie;
	int rc;
	const int wrlen = FUNC3();
	const int inv_tid = ti->ntids + ti->tid_base;

	FUNC0(sc->tids.hftid_hash_4t != NULL);
	FUNC0(sc->tids.ntids > 0);

	if (t->idx < sc->tids.tid_base || t->idx >= inv_tid)
		return (EINVAL);

	FUNC8(&ti->hftid_lock);
	f = FUNC6(sc, t->idx);
	if (f == NULL || f->valid == 0) {
		rc = EINVAL;
		goto done;
	}
	FUNC0(f->tid == t->idx);
	if (f->locked) {
		rc = EPERM;
		goto done;
	}
	if (f->pending) {
		rc = EBUSY;
		goto done;
	}
	wr = FUNC10(&sc->sge.ctrlq[0], FUNC5(wrlen, 16), &cookie);
	if (wr == NULL) {
		rc = ENOMEM;
		goto done;
	}

	FUNC7(t->idx, wr, wrlen, sc->sge.fwq.abs_id);
	f->locked = 1;
	f->pending = 1;
	FUNC1(&sc->sge.ctrlq[0], wr, &cookie);
	t->fs = f->fs;	/* extra info for the caller */

	for (;;) {
		FUNC0(f->locked);
		if (f->pending == 0) {
			if (f->valid) {
				f->locked = 0;
				rc = EIO;
			} else {
				rc = 0;
				FUNC4(f, M_CXGBE);
			}
			break;
		}
		if (FUNC2(&ti->hftid_cv, &ti->hftid_lock) != 0) {
			f->locked = 0;
			rc = EINPROGRESS;
			break;
		}
	}
done:
	FUNC9(&ti->hftid_lock);
	return (rc);
}