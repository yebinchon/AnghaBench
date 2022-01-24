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

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * kvmd ; 
 int /*<<< orphan*/  memf ; 
 int /*<<< orphan*/  nlistf ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(void)
{
	char errbuf[_POSIX2_LINE_MAX];

	if (kvmd != NULL)
		return (0);

	kvmd = FUNC1(nlistf, memf, NULL, O_RDONLY, errbuf);
	if (FUNC2(FUNC0()) != 0)
		FUNC3(-1, "setgid");

	if (kvmd == NULL) {
		FUNC4("kvm not available: %s", errbuf);
		return (-1);
	}

	return (0);
}