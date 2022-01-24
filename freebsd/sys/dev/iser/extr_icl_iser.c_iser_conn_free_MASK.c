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
struct kobj {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flush_lock; int /*<<< orphan*/  flush_cv; } ;
struct TYPE_4__ {TYPE_1__ beacon; int /*<<< orphan*/  lock; } ;
struct iser_conn {int /*<<< orphan*/  up_cv; int /*<<< orphan*/  state_mutex; TYPE_2__ ib_conn; } ;
struct icl_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_ICL_ISER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  icl_iser_ncons ; 
 struct iser_conn* FUNC1 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct kobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct icl_conn *ic)
{
	struct iser_conn *iser_conn = FUNC1(ic);

	FUNC2(ic);
	FUNC4(&iser_conn->ib_conn.lock);
	FUNC0(&iser_conn->ib_conn.beacon.flush_cv);
	FUNC4(&iser_conn->ib_conn.beacon.flush_lock);
	FUNC6(&iser_conn->state_mutex);
	FUNC0(&iser_conn->up_cv);
	FUNC3((struct kobj *)iser_conn, M_ICL_ISER);
	FUNC5(&icl_iser_ncons);
}