#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * kc_arg; int /*<<< orphan*/ * kc_func; } ;
struct TYPE_9__ {void* kb_token; TYPE_1__ kb_callback; } ;
typedef  TYPE_2__ keyboard_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6(keyboard_t *kbd, void *id)
{
	int error;
	int s;

	s = FUNC4();
	if (!FUNC1(kbd) || !FUNC0(kbd)) {
		error = EINVAL;
	} else if (kbd->kb_token != id) {
		error = EPERM;
	} else {
		kbd->kb_token = NULL;
		FUNC2(kbd);
		kbd->kb_callback.kc_func = NULL;
		kbd->kb_callback.kc_arg = NULL;
		FUNC3(kbd);
		error = 0;
	}
	FUNC5(s);
	return (error);
}