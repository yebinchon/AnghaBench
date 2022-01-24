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
typedef  int u_int ;
struct number {int scale; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct number*) ; 
 struct number* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct number const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC5(const struct number *n)
{
	struct number *int_part, *fract_part;
	u_int i;

	if (FUNC1(n->number))
		return n->scale ? n->scale : 1;

	int_part = FUNC3();
	fract_part = FUNC3();
	fract_part->scale = n->scale;
	FUNC4(n, int_part->number, fract_part->number);

	i = 0;
	while (!FUNC1(int_part->number)) {
		FUNC0(int_part->number, 10);
		i++;
	}
	FUNC2(int_part);
	FUNC2(fract_part);
	return (i + n->scale);
}