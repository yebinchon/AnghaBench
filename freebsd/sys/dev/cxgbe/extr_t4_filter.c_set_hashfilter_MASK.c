#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct wrq_cookie {int dummy; } ;
struct TYPE_8__ {int pfvf_vld; int ovlan_vld; } ;
struct TYPE_7__ {int pfvf_vld; int ovlan_vld; } ;
struct TYPE_11__ {int hash; scalar_t__ type; TYPE_2__ mask; TYPE_1__ val; } ;
struct t4_filter {int idx; TYPE_5__ fs; } ;
struct smt_entry {int dummy; } ;
struct l2t_entry {int dummy; } ;
struct filter_entry {int locked; int pending; int tid; scalar_t__ valid; TYPE_5__ fs; struct smt_entry* smt; struct l2t_entry* l2te; } ;
struct TYPE_10__ {int /*<<< orphan*/  hftid_lock; int /*<<< orphan*/  hftid_cv; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ctrlq; } ;
struct adapter {TYPE_4__ tids; TYPE_3__ sge; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,scalar_t__) ; 
 int FUNC3 (struct adapter*,struct filter_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,struct wrq_cookie*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct filter_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,struct filter_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct adapter*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 struct filter_entry* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,struct filter_entry*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,struct filter_entry*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wrq_cookie*) ; 

__attribute__((used)) static int
FUNC17(struct adapter *sc, struct t4_filter *t, uint64_t ftuple,
    struct l2t_entry *l2te, struct smt_entry *smt)
{
	void *wr;
	struct wrq_cookie cookie;
	struct filter_entry *f;
	int rc, atid = -1;
	uint32_t hash;

	FUNC0(t->fs.hash);
	/* Already validated against fconf, iconf */
	FUNC0((t->fs.val.pfvf_vld & t->fs.val.ovlan_vld) == 0);
	FUNC0((t->fs.mask.pfvf_vld & t->fs.mask.ovlan_vld) == 0);

	hash = FUNC8(&t->fs);

	FUNC14(&sc->tids.hftid_lock);
	if (FUNC10(sc, &t->fs, hash) != NULL) {
		rc = EEXIST;
		goto done;
	}

	f = FUNC11(sizeof(*f), M_CXGBE, M_ZERO | M_NOWAIT);
	if (FUNC1(f == NULL)) {
		rc = ENOMEM;
		goto done;
	}
	f->fs = t->fs;
	f->l2te = l2te;
	f->smt = smt;

	atid = FUNC3(sc, f);
	if (FUNC1(atid) == -1) {
		FUNC6(f, M_CXGBE);
		rc = EAGAIN;
		goto done;
	}
	FUNC0(atid >= 0);

	wr = FUNC16(&sc->sge.ctrlq[0], FUNC2(sc, f->fs.type),
	    &cookie);
	if (wr == NULL) {
		FUNC7(sc, atid);
		FUNC6(f, M_CXGBE);
		rc = ENOMEM;
		goto done;
	}
	if (f->fs.type)
		FUNC13(sc, f, atid, ftuple, wr);
	else
		FUNC12(sc, f, atid, ftuple, wr);

	f->locked = 1; /* ithread mustn't free f if ioctl is still around. */
	f->pending = 1;
	f->tid = -1;
	FUNC9(sc, f, hash);
	FUNC4(&sc->sge.ctrlq[0], wr, &cookie);

	for (;;) {
		FUNC0(f->locked);
		if (f->pending == 0) {
			if (f->valid) {
				rc = 0;
				f->locked = 0;
				t->idx = f->tid;
			} else {
				rc = f->tid;
				FUNC6(f, M_CXGBE);
			}
			break;
		}
		if (FUNC5(&sc->tids.hftid_cv, &sc->tids.hftid_lock) != 0) {
			f->locked = 0;
			rc = EINPROGRESS;
			break;
		}
	}
done:
	FUNC15(&sc->tids.hftid_lock);
	return (rc);
}