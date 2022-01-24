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
struct TYPE_2__ {size_t sl_cur; char** sl_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* locales ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void
FUNC2(void)
{
	size_t i;

	FUNC0();
	for (i = 0; i < locales->sl_cur; i++) {
		FUNC1("%s\n", locales->sl_str[i]);
	}
}