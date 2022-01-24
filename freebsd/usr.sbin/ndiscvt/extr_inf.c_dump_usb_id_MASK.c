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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  ofp ; 
 char* FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC4(const char *s)
{
	char *p;
	char vidstr[7], pidstr[7];

	p = FUNC1(s, "VID_");
	if (p == NULL)
		return;
	p += 4;
	FUNC2(vidstr, "0x");
	FUNC3(vidstr, p, 4);
	p = FUNC1(s, "PID_");
	if (p == NULL)
		return;
	p += 4;
	FUNC2(pidstr, "0x");
	FUNC3(pidstr, p, 4);
	if (p == NULL)
		return;

	FUNC0(ofp, "\t\\\n\t{ %s, %s, ", vidstr, pidstr);
}