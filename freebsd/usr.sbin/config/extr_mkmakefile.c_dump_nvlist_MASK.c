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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 char* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static void
FUNC5(nvlist_t *nvl, FILE *ofp)
{
	const char *name;
	void *cookie;

	if (nvl == NULL)
		return;

	while (!FUNC3(nvl)) {
		cookie = NULL;
		name = FUNC4(nvl, NULL, &cookie);
		FUNC2(ofp, "\"%s=%s\\0\"\n", name,
		     FUNC1(cookie));

		FUNC0(cookie);
	}
}