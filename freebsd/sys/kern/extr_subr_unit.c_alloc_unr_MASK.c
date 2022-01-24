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
struct unrhdr {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int FUNC0 (struct unrhdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct unrhdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct unrhdr *uh)
{
	int i;

	FUNC2(uh->mtx);
	i = FUNC0(uh);
	FUNC1(uh);
	FUNC3(uh->mtx);
	return (i);
}