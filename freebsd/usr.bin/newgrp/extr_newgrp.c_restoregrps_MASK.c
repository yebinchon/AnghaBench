#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_END ; 
 int /*<<< orphan*/  PRIV_START ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* pwd ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	int initres, setres;

	PRIV_START;
	initres = FUNC0(pwd->pw_name, pwd->pw_gid);
	setres = FUNC1(pwd->pw_gid);
	PRIV_END;

	if (initres < 0)
		FUNC2("initgroups");
	if (setres < 0)
		FUNC2("setgid");
}