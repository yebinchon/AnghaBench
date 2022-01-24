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
struct itimerval {int /*<<< orphan*/  it_value; int /*<<< orphan*/  it_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(struct itimerval *it)
{

	FUNC1("itimerval { .interval = ");
	FUNC0(&it->it_interval);
	FUNC1(", .value = ");
	FUNC0(&it->it_value);
	FUNC1(" }\n");
}