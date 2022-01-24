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
struct umtxq_chain {int /*<<< orphan*/  uc_pi_list; } ;
struct umtx_pi {scalar_t__ pi_refcount; int /*<<< orphan*/  pi_blocked; int /*<<< orphan*/ * pi_owner; int /*<<< orphan*/  pi_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct umtx_pi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct umtxq_chain*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pi_hashlink ; 
 int /*<<< orphan*/  umtx_lock ; 
 int /*<<< orphan*/  FUNC6 (struct umtx_pi*) ; 
 int /*<<< orphan*/  FUNC7 (struct umtx_pi*) ; 
 struct umtxq_chain* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct umtx_pi *pi)
{
	struct umtxq_chain *uc;

	uc = FUNC8(&pi->pi_key);
	FUNC3(uc);
	FUNC0(pi->pi_refcount > 0, ("invalid reference count"));
	if (--pi->pi_refcount == 0) {
		FUNC4(&umtx_lock);
		if (pi->pi_owner != NULL)
			FUNC6(pi);
		FUNC0(FUNC1(&pi->pi_blocked),
			("blocked queue not empty"));
		FUNC5(&umtx_lock);
		FUNC2(&uc->uc_pi_list, pi, pi_hashlink);
		FUNC7(pi);
	}
}