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
 int /*<<< orphan*/  FUNC0 (struct g_consumer*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*) ; 

__attribute__((used)) static void
FUNC3(void *arg, int flags)
{
	struct g_consumer *cp;

	cp = arg;
	FUNC0(cp, -1, -1, 0);
	FUNC2(cp);
	FUNC1(cp);
}