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
struct t4_offload_policy {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_SET_OFLD_POLICY ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct t4_offload_policy*) ; 
 int /*<<< orphan*/  FUNC1 (struct t4_offload_policy*) ; 
 int FUNC2 (char const*,struct t4_offload_policy*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(int argc, const char *argv[])
{
	int rc = 0;
	const char *fname = argv[0];
	struct t4_offload_policy op = {0};

	if (argc != 1) {
		FUNC4("incorrect number of arguments.");
		return (EINVAL);
	}

	if (!FUNC3(fname, "clear") || !FUNC3(fname, "none")) {
		/* op.nrules is 0 and that means clear policy */
		return (FUNC0(CHELSIO_T4_SET_OFLD_POLICY, &op));
	}

	rc = FUNC2(fname, &op);
	if (rc != 0) {
		/* Error message displayed already */
		return (EINVAL);
	}

	rc = FUNC0(CHELSIO_T4_SET_OFLD_POLICY, &op);
	FUNC1(&op);

	return (rc);
}