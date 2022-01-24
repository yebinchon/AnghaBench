#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_4__ {char* rs_ident; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MOD_LOAD 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int VIA_HAS_RNG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_1__ random_nehemiah ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int via_feature_rng ; 

__attribute__((used)) static int
FUNC5(module_t mod, int type, void *unused)
{
	int error = 0;

	switch (type) {
	case MOD_LOAD:
		if (via_feature_rng & VIA_HAS_RNG) {
			FUNC4(&random_nehemiah);
			FUNC0("random: fast provider: \"%s\"\n", random_nehemiah.rs_ident);
			FUNC2();
		}
		break;

	case MOD_UNLOAD:
		if (via_feature_rng & VIA_HAS_RNG) {
			FUNC1();
			FUNC3(&random_nehemiah);
		}
		break;

	case MOD_SHUTDOWN:
		break;

	default:
		error = EOPNOTSUPP;
		break;

	}

	return (error);
}