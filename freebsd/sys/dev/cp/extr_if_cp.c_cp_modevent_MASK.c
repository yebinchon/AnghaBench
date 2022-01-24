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
#define  MOD_LOAD 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cp_timeout ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  timeout_handle ; 
 int /*<<< orphan*/  typestruct ; 

__attribute__((used)) static int FUNC7 (module_t mod, int type, void *unused)
{
	static int load_count = 0;

	switch (type) {
	case MOD_LOAD:
#ifdef NETGRAPH
		if (ng_newtype (&typestruct))
			printf ("Failed to register ng_cp\n");
#endif
		++load_count;
		FUNC1 (&timeout_handle, 1);
		FUNC2 (&timeout_handle, hz*5, cp_timeout, 0);
		break;
	case MOD_UNLOAD:
		if (load_count == 1) {
			FUNC6 ("Removing device entry for Tau-PCI\n");
#ifdef NETGRAPH
			ng_rmtype (&typestruct);
#endif			
		}
		/* If we were wait it than it reasserted now, just stop it.
		 * Actually we shouldn't get this condition. But code could be
		 * changed in the future, so just be a litle paranoid.
		 */
		if (!FUNC0 (&timeout_handle))
			FUNC3 (&timeout_handle);
		--load_count;
		break;
	case MOD_SHUTDOWN:
		break;
	}
	return 0;
}