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
struct enum_pairs {int dummy; } ;
struct enum_pair {int enum_val; int /*<<< orphan*/ * enum_str; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct enum_pairs*,struct enum_pair*,int /*<<< orphan*/ ) ; 
 struct enum_pair* FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct enum_pair*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int32_t
FUNC6(struct enum_pairs *headp, int32_t enum_val, char *enum_str)
{
	struct enum_pair *e_new;

	if ((e_new = FUNC1(1, sizeof(struct enum_pair))) == NULL) {
		FUNC5(LOG_ERR, "calloc() failed: %s", FUNC4(errno));
		return (-1);
	}

	if ((e_new->enum_str = FUNC3(enum_str)) == NULL) {
		FUNC5(LOG_ERR, "strdup() failed: %s", FUNC4(errno));
		FUNC2(e_new);
		return (-1);
	}

	e_new->enum_val = enum_val;
	FUNC0(headp, e_new, link);

	return (1);

}