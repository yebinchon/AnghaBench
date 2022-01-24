#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kbd_callback_func_t ;
struct TYPE_6__ {void* kc_arg; int /*<<< orphan*/ * kc_func; } ;
struct TYPE_7__ {TYPE_1__ kb_callback; void* kb_token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__** keyboard ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6(char *driver, int unit, void *id, kbd_callback_func_t *func,
	     void *arg)
{
	int index;
	int s;

	if (func == NULL)
		return (-1);

	s = FUNC4();
	index = FUNC2(driver, unit);
	if (index >= 0) {
		if (FUNC1(keyboard[index])) {
			FUNC5(s);
			return (-1);
		}
		keyboard[index]->kb_token = id;
		FUNC0(keyboard[index]);
		keyboard[index]->kb_callback.kc_func = func;
		keyboard[index]->kb_callback.kc_arg = arg;
		FUNC3(keyboard[index]);
	}
	FUNC5(s);
	return (index);
}