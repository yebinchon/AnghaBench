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
struct number {int /*<<< orphan*/ * number; scalar_t__ scale; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 struct number* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

struct number *
FUNC3(void)
{
	struct number *n;

	n = FUNC1(sizeof(*n));
	n->scale = 0;
	n->number = FUNC0();
	if (n->number == NULL)
		FUNC2(1, NULL);
	return (n);
}