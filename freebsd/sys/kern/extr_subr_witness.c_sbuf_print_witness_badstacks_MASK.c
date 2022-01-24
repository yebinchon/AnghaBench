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
struct witness_lock_order_data {scalar_t__ w_reversed; int /*<<< orphan*/  wlod_stack; TYPE_1__* w_class; int /*<<< orphan*/  w_name; } ;
struct witness {scalar_t__ w_reversed; int /*<<< orphan*/  wlod_stack; TYPE_1__* w_class; int /*<<< orphan*/  w_name; } ;
struct sbuf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wloh_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  lc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int WITNESS_REVERSAL ; 
 scalar_t__ FUNC0 (struct witness_lock_order_data*,struct witness_lock_order_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct witness_lock_order_data*,int /*<<< orphan*/ ) ; 
 struct witness_lock_order_data* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct witness_lock_order_data* w_data ; 
 int w_generation ; 
 TYPE_2__ w_lohash ; 
 int w_max_used_index ; 
 int /*<<< orphan*/  w_mtx ; 
 int** w_rmatrix ; 
 struct witness_lock_order_data* FUNC10 (struct witness_lock_order_data*,struct witness_lock_order_data*) ; 

__attribute__((used)) static void
FUNC11(struct sbuf *sb, size_t *oldidx)
{
	struct witness_lock_order_data *data1, *data2, *tmp_data1, *tmp_data2;
	struct witness *tmp_w1, *tmp_w2, *w1, *w2;
	int generation, i, j;

	tmp_data1 = NULL;
	tmp_data2 = NULL;
	tmp_w1 = NULL;
	tmp_w2 = NULL;

	/* Allocate and init temporary storage space. */
	tmp_w1 = FUNC2(sizeof(struct witness), M_TEMP, M_WAITOK | M_ZERO);
	tmp_w2 = FUNC2(sizeof(struct witness), M_TEMP, M_WAITOK | M_ZERO);
	tmp_data1 = FUNC2(sizeof(struct witness_lock_order_data), M_TEMP, 
	    M_WAITOK | M_ZERO);
	tmp_data2 = FUNC2(sizeof(struct witness_lock_order_data), M_TEMP, 
	    M_WAITOK | M_ZERO);
	FUNC9(&tmp_data1->wlod_stack);
	FUNC9(&tmp_data2->wlod_stack);

restart:
	FUNC3(&w_mtx);
	generation = w_generation;
	FUNC4(&w_mtx);
	FUNC6(sb, "Number of known direct relationships is %d\n",
	    w_lohash.wloh_count);
	for (i = 1; i < w_max_used_index; i++) {
		FUNC3(&w_mtx);
		if (generation != w_generation) {
			FUNC4(&w_mtx);

			/* The graph has changed, try again. */
			*oldidx = 0;
			FUNC5(sb);
			goto restart;
		}

		w1 = &w_data[i];
		if (w1->w_reversed == 0) {
			FUNC4(&w_mtx);
			continue;
		}

		/* Copy w1 locally so we can release the spin lock. */
		*tmp_w1 = *w1;
		FUNC4(&w_mtx);

		if (tmp_w1->w_reversed == 0)
			continue;
		for (j = 1; j < w_max_used_index; j++) {
			if ((w_rmatrix[i][j] & WITNESS_REVERSAL) == 0 || i > j)
				continue;

			FUNC3(&w_mtx);
			if (generation != w_generation) {
				FUNC4(&w_mtx);

				/* The graph has changed, try again. */
				*oldidx = 0;
				FUNC5(sb);
				goto restart;
			}

			w2 = &w_data[j];
			data1 = FUNC10(w1, w2);
			data2 = FUNC10(w2, w1);

			/*
			 * Copy information locally so we can release the
			 * spin lock.
			 */
			*tmp_w2 = *w2;

			if (data1) {
				FUNC9(&tmp_data1->wlod_stack);
				FUNC7(&data1->wlod_stack,
				    &tmp_data1->wlod_stack);
			}
			if (data2 && data2 != data1) {
				FUNC9(&tmp_data2->wlod_stack);
				FUNC7(&data2->wlod_stack,
				    &tmp_data2->wlod_stack);
			}
			FUNC4(&w_mtx);

			if (FUNC0(tmp_w1, tmp_w2))
				continue;

			FUNC6(sb,
	    "\nLock order reversal between \"%s\"(%s) and \"%s\"(%s)!\n",
			    tmp_w1->w_name, tmp_w1->w_class->lc_name, 
			    tmp_w2->w_name, tmp_w2->w_class->lc_name);
			if (data1) {
				FUNC6(sb,
			"Lock order \"%s\"(%s) -> \"%s\"(%s) first seen at:\n",
				    tmp_w1->w_name, tmp_w1->w_class->lc_name, 
				    tmp_w2->w_name, tmp_w2->w_class->lc_name);
				FUNC8(sb, &tmp_data1->wlod_stack);
				FUNC6(sb, "\n");
			}
			if (data2 && data2 != data1) {
				FUNC6(sb,
			"Lock order \"%s\"(%s) -> \"%s\"(%s) first seen at:\n",
				    tmp_w2->w_name, tmp_w2->w_class->lc_name, 
				    tmp_w1->w_name, tmp_w1->w_class->lc_name);
				FUNC8(sb, &tmp_data2->wlod_stack);
				FUNC6(sb, "\n");
			}
		}
	}
	FUNC3(&w_mtx);
	if (generation != w_generation) {
		FUNC4(&w_mtx);

		/*
		 * The graph changed while we were printing stack data,
		 * try again.
		 */
		*oldidx = 0;
		FUNC5(sb);
		goto restart;
	}
	FUNC4(&w_mtx);

	/* Free temporary storage space. */
	FUNC1(tmp_data1, M_TEMP);
	FUNC1(tmp_data2, M_TEMP);
	FUNC1(tmp_w1, M_TEMP);
	FUNC1(tmp_w2, M_TEMP);
}