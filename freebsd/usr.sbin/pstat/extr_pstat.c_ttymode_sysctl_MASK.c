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
struct xtty {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 char* hdr ; 
 struct xtty* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct xtty* FUNC3 (struct xtty*,size_t) ; 
 int FUNC4 (char*,struct xtty*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xtty*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct xtty *xttys;
	size_t len;
	unsigned int i, n;

	(void)FUNC2("%s", hdr);
	if ((xttys = FUNC1(len = sizeof(*xttys))) == NULL)
		FUNC0(1, "malloc()");
	while (FUNC4("kern.ttys", xttys, &len, 0, 0) == -1) {
		if (errno != ENOMEM)
			FUNC0(1, "sysctlbyname()");
		len *= 2;
		if ((xttys = FUNC3(xttys, len)) == NULL)
			FUNC0(1, "realloc()");
	}
	n = len / sizeof(*xttys);
	for (i = 0; i < n; i++)
		FUNC5(&xttys[i]);
}