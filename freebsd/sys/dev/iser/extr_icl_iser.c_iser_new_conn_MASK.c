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
struct mtx {int dummy; } ;
struct icl_conn {char const* ic_name; int ic_iser; int ic_unmapped; int /*<<< orphan*/  ic_offload; struct mtx* ic_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  flush_cv; int /*<<< orphan*/  flush_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ beacon; } ;
struct iser_conn {struct icl_conn icl_conn; TYPE_2__ ib_conn; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  up_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_ICL_ISER ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  icl_iser_class ; 
 int /*<<< orphan*/  icl_iser_ncons ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct icl_conn *
FUNC8(const char *name, struct mtx *lock)
{
	struct iser_conn *iser_conn;
	struct icl_conn *ic;

	FUNC4(&icl_iser_ncons);

	iser_conn = (struct iser_conn *)FUNC2(&icl_iser_class, M_ICL_ISER, M_WAITOK | M_ZERO);
	if (!iser_conn) {
		FUNC0("failed to allocate iser conn");
		FUNC5(&icl_iser_ncons);
		return (NULL);
	}

	FUNC1(&iser_conn->up_cv, "iser_cv");
	FUNC7(&iser_conn->state_mutex, "iser_conn_state_mutex");
	FUNC3(&iser_conn->ib_conn.beacon.flush_lock, "iser_flush_lock", NULL, MTX_DEF);
	FUNC1(&iser_conn->ib_conn.beacon.flush_cv, "flush_cv");
	FUNC3(&iser_conn->ib_conn.lock, "iser_lock", NULL, MTX_DEF);

	ic = &iser_conn->icl_conn;
	ic->ic_lock = lock;
	ic->ic_name = name;
	ic->ic_offload = FUNC6("iser", M_TEMP);
	ic->ic_iser = true;
	ic->ic_unmapped = true;

	return (ic);
}