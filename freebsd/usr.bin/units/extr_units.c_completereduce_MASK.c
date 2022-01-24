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
struct unittype {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unittype*) ; 
 scalar_t__ FUNC1 (struct unittype*) ; 
 int /*<<< orphan*/  FUNC2 (struct unittype*) ; 

__attribute__((used)) static int 
FUNC3(struct unittype * unit)
{
	if (FUNC1(unit))
		return 1;
	FUNC2(unit);
	FUNC0(unit);
	return 0;
}