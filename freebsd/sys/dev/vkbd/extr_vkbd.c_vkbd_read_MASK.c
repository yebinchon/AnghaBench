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
struct TYPE_4__ {int /*<<< orphan*/  kb_count; scalar_t__ kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(keyboard_t *kbd, int wait)
{
	vkbd_state_t	*state = (vkbd_state_t *) kbd->kb_data;
	int		 c;

	FUNC1(state);
	c = FUNC3(state, wait);
	FUNC2(state);

	if (c != -1)
		kbd->kb_count ++;

	return (FUNC0(kbd)? c : -1);
}