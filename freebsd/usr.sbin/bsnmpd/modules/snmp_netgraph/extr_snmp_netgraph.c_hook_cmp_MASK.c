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
struct linkinfo {int /*<<< orphan*/  ourhook; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void *p1, const void *p2)
{
	const struct linkinfo *i1 = p1;
	const struct linkinfo *i2 = p2;

	if (FUNC1(i1->ourhook) < FUNC1(i2->ourhook))
		return (-1);
	if (FUNC1(i1->ourhook) > FUNC1(i2->ourhook))
		return (+1);
	return (FUNC0(i1->ourhook, i2->ourhook));
}