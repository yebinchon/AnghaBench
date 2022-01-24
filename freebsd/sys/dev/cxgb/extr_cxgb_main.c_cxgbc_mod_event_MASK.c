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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EBUSY ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t3_list ; 
 int /*<<< orphan*/  t3_list_lock ; 
 int /*<<< orphan*/  t3_uld_list ; 
 int /*<<< orphan*/  t3_uld_list_lock ; 

__attribute__((used)) static int
FUNC6(module_t mod, int cmd, void *arg)
{
	int rc = 0;

	switch (cmd) {
	case MOD_LOAD:
		FUNC3(&t3_list_lock, "T3 adapters", 0, MTX_DEF);
		FUNC1(&t3_list);
#ifdef TCP_OFFLOAD
		mtx_init(&t3_uld_list_lock, "T3 ULDs", 0, MTX_DEF);
		SLIST_INIT(&t3_uld_list);
#endif
		break;

	case MOD_UNLOAD:
#ifdef TCP_OFFLOAD
		mtx_lock(&t3_uld_list_lock);
		if (!SLIST_EMPTY(&t3_uld_list)) {
			rc = EBUSY;
			mtx_unlock(&t3_uld_list_lock);
			break;
		}
		mtx_unlock(&t3_uld_list_lock);
		mtx_destroy(&t3_uld_list_lock);
#endif
		FUNC4(&t3_list_lock);
		if (!FUNC0(&t3_list)) {
			rc = EBUSY;
			FUNC5(&t3_list_lock);
			break;
		}
		FUNC5(&t3_list_lock);
		FUNC2(&t3_list_lock);
		break;
	}

	return (rc);
}