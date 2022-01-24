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
typedef  int /*<<< orphan*/  priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/ * iffam_p ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int EISCONN ; 
 int EPFNOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 

__attribute__((used)) static int
FUNC7(node_p node, hook_p hook, const char *name)
{
	const iffam_p iffam = FUNC6(name);
	const priv_p priv = FUNC2(node);
	hook_p *hookptr;

	if (iffam == NULL)
		return (EPFNOSUPPORT);
	FUNC3(priv);
	hookptr = FUNC5(priv, iffam);
	if (*hookptr != NULL) {
		FUNC4(priv);
		return (EISCONN);
	}
	*hookptr = hook;
	FUNC0(hook);
	FUNC1(hook);
	FUNC4(priv);
	return (0);
}