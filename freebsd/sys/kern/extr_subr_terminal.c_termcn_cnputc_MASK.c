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
typedef  int /*<<< orphan*/  teken_attr_t ;
struct terminal {int tm_flags; TYPE_1__* tm_class; int /*<<< orphan*/  tm_emulator; } ;
struct consdev {struct terminal* cn_arg; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tc_done ) (struct terminal*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terminal*) ; 
 int /*<<< orphan*/  FUNC1 (struct terminal*) ; 
 int TF_MUTE ; 
 int /*<<< orphan*/  kernel_message ; 
 int /*<<< orphan*/  FUNC2 (struct terminal*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct consdev *cp, int c)
{
	struct terminal *tm = cp->cn_arg;
	teken_attr_t backup;
	char cv = c;

	FUNC0(tm);
	if (!(tm->tm_flags & TF_MUTE)) {
		backup = *FUNC3(&tm->tm_emulator);
		FUNC5(&tm->tm_emulator, &kernel_message);
		FUNC4(&tm->tm_emulator, &cv, 1);
		FUNC5(&tm->tm_emulator, &backup);
		tm->tm_class->tc_done(tm);
	}
	FUNC1(tm);
}