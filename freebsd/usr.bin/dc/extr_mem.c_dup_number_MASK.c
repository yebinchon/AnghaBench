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
struct number {int /*<<< orphan*/  number; int /*<<< orphan*/  scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct number* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

struct number *
FUNC3(const struct number *a)
{
	struct number *n;

	n = FUNC1(sizeof(*n));
	n->scale = a->scale;
	n->number = FUNC0(a->number);
	FUNC2(n->number);
	return (n);
}