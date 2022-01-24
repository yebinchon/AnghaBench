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
typedef  int /*<<< orphan*/  rpc_gss_principal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,char const*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC5(int argc, const char **argv)
{
	const char *mechname, *name, *node, *domain;
	rpc_gss_principal_t principal;

	if (argc < 3 || argc > 5) {
		FUNC3("usage: rpctest principal <mechname> <name> "
		    "[<node> [<domain>] ]\n");
		FUNC0(1);
	}

	mechname = argv[1];
	name = argv[2];
	node = NULL;
	domain = NULL;
	if (argc > 3) {
		node = argv[3];
		if (argc > 4)
			domain = argv[4];
	}

	if (FUNC4(&principal, mechname, name,
		node, domain)) {
		FUNC3("succeeded:\n");
		FUNC2(principal);
		FUNC1(principal);
	} else {
		FUNC3("failed\n");
	}
}