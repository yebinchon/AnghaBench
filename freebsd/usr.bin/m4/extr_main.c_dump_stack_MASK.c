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
struct position {char* name; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int MAXRECORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(struct position *t, int lev)
{
	int i;

	for (i = 0; i < lev; i++) {
		if (i == MAXRECORD) {
			FUNC0(stderr, "   ...\n");
			break;
		}
		FUNC0(stderr, "   %s at line %d\n",
			t[i].name, t[i].line);
	}
}