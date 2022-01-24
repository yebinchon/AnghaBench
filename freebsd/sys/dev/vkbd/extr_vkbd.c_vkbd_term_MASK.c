#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* kb_fkeytab; struct TYPE_8__* kb_accentmap; struct TYPE_8__* kb_keymap; scalar_t__ kb_data; } ;
typedef  TYPE_1__ vkbd_state_t ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_VKBD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(keyboard_t *kbd)
{
	vkbd_state_t	*state = (vkbd_state_t *) kbd->kb_data;

	FUNC3(kbd);

	FUNC0(state);
	FUNC1(state, sizeof(*state));
	FUNC2(state, M_VKBD);

	FUNC2(kbd->kb_keymap, M_VKBD);
	FUNC2(kbd->kb_accentmap, M_VKBD);
	FUNC2(kbd->kb_fkeytab, M_VKBD);
	FUNC2(kbd, M_VKBD);

	return (0);
}