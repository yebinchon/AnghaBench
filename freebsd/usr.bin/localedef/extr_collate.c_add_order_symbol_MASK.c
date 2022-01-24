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
struct TYPE_3__ {int /*<<< orphan*/ * ref; } ;
typedef  TYPE_1__ collundef_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t curr_weight ; 
 TYPE_1__* FUNC1 (char*) ; 

void
FUNC2(char *sym)
{
	collundef_t *c;
	if ((c = FUNC1(sym)) == NULL) {
		INTERR;
		return;
	}
	FUNC0(c->ref[curr_weight]);
}