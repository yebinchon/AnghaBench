#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vkbd_state_t ;
struct TYPE_4__ {scalar_t__ kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(keyboard_t *kbd)
{
	vkbd_state_t	*state = NULL;
	int		 ready;

	if (!FUNC0(kbd))
		return (FALSE);

	state = (vkbd_state_t *) kbd->kb_data;

	FUNC1(state);
	ready = FUNC3(state);
	FUNC2(state);

	return (ready);
}