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
struct gf128table4 {int /*<<< orphan*/ * tbls; } ;
struct gf128 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gf128,int /*<<< orphan*/ *) ; 
 struct gf128 FUNC1 (struct gf128,int /*<<< orphan*/ *) ; 

void
FUNC2(struct gf128 h, struct gf128table4 *t)
{
	struct gf128 h2, h3, h4;

	FUNC0(h, &t->tbls[0]);

	h2 = FUNC1(h, &t->tbls[0]);

	FUNC0(h2, &t->tbls[1]);

	h3 = FUNC1(h, &t->tbls[1]);
	FUNC0(h3, &t->tbls[2]);

	h4 = FUNC1(h2, &t->tbls[1]);
	FUNC0(h4, &t->tbls[3]);
}