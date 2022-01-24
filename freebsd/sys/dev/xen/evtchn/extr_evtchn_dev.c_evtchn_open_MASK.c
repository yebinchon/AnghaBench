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
struct thread {int dummy; } ;
struct per_user_data {struct per_user_data* ring; int /*<<< orphan*/  ring_cons_mutex; int /*<<< orphan*/  ring_prod_mutex; int /*<<< orphan*/  bind_mutex; int /*<<< orphan*/  evtchns; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_EVTCHN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct per_user_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evtchn_release ; 
 int /*<<< orphan*/  FUNC2 (struct per_user_data*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, int flag, int otyp, struct thread *td)
{
	struct per_user_data *u;
	int error;

	u = FUNC3(sizeof(*u), M_EVTCHN, M_WAITOK | M_ZERO);
	u->ring = FUNC3(PAGE_SIZE, M_EVTCHN, M_WAITOK | M_ZERO);

	/* Initialize locks */
	FUNC5(&u->bind_mutex, "evtchn_bind_mutex", NULL, MTX_DEF);
	FUNC7(&u->ring_cons_mutex, "evtchn_ringc_sx");
	FUNC5(&u->ring_prod_mutex, "evtchn_ringp_mutex", NULL, MTX_DEF);

	/* Initialize red-black tree. */
	FUNC0(&u->evtchns);

	/* Assign the allocated per_user_data to this open instance. */
	error = FUNC1(u, evtchn_release);
	if (error != 0) {
		FUNC4(&u->bind_mutex);
		FUNC4(&u->ring_prod_mutex);
		FUNC6(&u->ring_cons_mutex);
		FUNC2(u->ring, M_EVTCHN);
		FUNC2(u, M_EVTCHN);
	}

	return (error);
}