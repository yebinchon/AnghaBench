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
typedef  int /*<<< orphan*/ * cpl_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*,uintptr_t) ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** t4_cpl_handler ; 

void
FUNC3(int opcode, cpl_handler_t h)
{
	uintptr_t *loc;

	FUNC0(opcode < FUNC2(t4_cpl_handler));
	FUNC0(h == NULL || t4_cpl_handler[opcode] == NULL);

	loc = (uintptr_t *)&t4_cpl_handler[opcode];
	FUNC1(loc, (uintptr_t)h);
}