#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int ktyp; int /*<<< orphan*/  knam; } ;

/* Variables and functions */
 scalar_t__ MAXKEYS ; 
 unsigned int NEEDARGS ; 
 int NOARGS ; 
 unsigned int TYPEMASK ; 
 TYPE_1__* keywrds ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC1(void)
{
	unsigned int type;
	int i;

	for (i = 0; i < (int)MAXKEYS; i++) {
		type = keywrds[i].ktyp & TYPEMASK;
		if ((keywrds[i].ktyp & NOARGS) == 0)
			type |= NEEDARGS;
		FUNC0(keywrds[i].knam, type);
	}
}