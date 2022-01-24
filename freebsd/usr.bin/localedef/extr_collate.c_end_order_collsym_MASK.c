#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ collsym_t ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVED ; 
 int /*<<< orphan*/  T_COLLSYM ; 
 int /*<<< orphan*/  nextpri ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(collsym_t *sym)
{
	FUNC1(T_COLLSYM);
	/* update the weight */

	FUNC0(sym->ref, nextpri, RESOLVED);
	nextpri++;
}