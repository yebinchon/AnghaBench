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
struct bits {int b_mask; int /*<<< orphan*/  b_name; } ;

/* Variables and functions */
 struct bits* bits ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(int f, const char *format)
{
	struct bits *p;

	FUNC2(format, FUNC0(f));

	FUNC3("flags_pretty");
	for (p = bits; p->b_mask; p++)
		if (p->b_mask & f)
			FUNC2("{le:flags_pretty/%s}", p->b_name);
	FUNC1("flags_pretty");
}