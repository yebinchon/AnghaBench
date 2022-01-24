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
struct g_consumer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_consumer*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void
FUNC3(struct g_consumer *cp, const char *attr)
{

	if (FUNC2(attr, "GEOM::media") == 0) {
		FUNC0(cp);
		return;
	}

	if (FUNC2(attr, "GEOM::physpath") == 0) {
		FUNC1(cp);
		return;
	}
}