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
struct enum_type {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 struct enum_type* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct enum_type*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct enum_type *
FUNC5(char *name)
{
	struct enum_type *enum_tc;

	if ((enum_tc = FUNC0(1, sizeof(struct enum_type))) == NULL) {
		FUNC4(LOG_ERR, "malloc() failed: %s", FUNC3(errno));
		return (NULL);
	}

	if ((enum_tc->name = FUNC2(name)) == NULL) {
		FUNC4(LOG_ERR, "malloc() failed: %s", FUNC3(errno));
		FUNC1(enum_tc);
		return (NULL);
	}

	return (enum_tc);
}