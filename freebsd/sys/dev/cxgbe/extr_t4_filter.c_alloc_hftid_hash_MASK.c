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
struct tid_info {int ntids; int /*<<< orphan*/  hftid_cv; int /*<<< orphan*/  hftid_lock; int /*<<< orphan*/ * hftid_hash_4t; int /*<<< orphan*/  hftid_4t_mask; int /*<<< orphan*/ * hftid_hash_tid; int /*<<< orphan*/  hftid_tid_mask; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct tid_info *t, int flags)
{
	int n;

	FUNC0(t->ntids > 0);
	FUNC0(t->hftid_hash_4t == NULL);
	FUNC0(t->hftid_hash_tid == NULL);

	n = FUNC4(t->ntids / 1024, 16);
	t->hftid_hash_4t = FUNC3(n, M_CXGBE, &t->hftid_4t_mask, flags);
	if (t->hftid_hash_4t == NULL)
		return (ENOMEM);
	t->hftid_hash_tid = FUNC3(n, M_CXGBE, &t->hftid_tid_mask,
	    flags);
	if (t->hftid_hash_tid == NULL) {
		FUNC2(t->hftid_hash_4t, M_CXGBE, t->hftid_4t_mask);
		t->hftid_hash_4t = NULL;
		return (ENOMEM);
	}

	FUNC5(&t->hftid_lock, "T4 hashfilters", 0, MTX_DEF);
	FUNC1(&t->hftid_cv, "t4hfcv");

	return (0);
}