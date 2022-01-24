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
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(module_t mod, int cmd, void *arg)
{
	int rc = 0;

#ifdef TCP_OFFLOAD
	switch (cmd) {
	case MOD_LOAD:
		rc = cxgbei_mod_load();
		if (rc == 0)
			rc = icl_cxgbei_mod_load();
		break;

	case MOD_UNLOAD:
		rc = icl_cxgbei_mod_unload();
		if (rc == 0)
			rc = cxgbei_mod_unload();
		break;

	default:
		rc = EINVAL;
	}
#else
	FUNC4("cxgbei: compiled without TCP_OFFLOAD support.\n");
	rc = EOPNOTSUPP;
#endif

	return (rc);
}