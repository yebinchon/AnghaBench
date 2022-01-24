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
struct TYPE_6__ {void* kc_arg; int /*<<< orphan*/ * kc_func; } ;
struct TYPE_7__ {void* kb_token; TYPE_1__ kb_callback; } ;
typedef  TYPE_2__ keyboard_t ;
typedef  int /*<<< orphan*/  kbd_callback_func_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(keyboard_t *kbd, void *id, kbd_callback_func_t *func,
		    void *arg)
{
	int error;
	int s;

	s = FUNC2();
	if (!FUNC1(kbd) || !FUNC0(kbd)) {
		error = EINVAL;
	} else if (kbd->kb_token != id) {
		error = EPERM;
	} else if (func == NULL) {
		error = EINVAL;
	} else {
		kbd->kb_callback.kc_func = func;
		kbd->kb_callback.kc_arg = arg;
		error = 0;
	}
	FUNC3(s);
	return (error);
}