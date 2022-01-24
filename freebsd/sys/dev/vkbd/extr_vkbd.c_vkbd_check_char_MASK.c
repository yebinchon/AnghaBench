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
struct TYPE_8__ {int ks_flags; scalar_t__ ks_composed_char; } ;
typedef  TYPE_1__ vkbd_state_t ;
struct TYPE_9__ {scalar_t__ kb_data; } ;
typedef  TYPE_2__ keyboard_t ;

/* Variables and functions */
 int COMPOSE ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(keyboard_t *kbd)
{
	vkbd_state_t	*state = NULL;
	int		 ready;

	if (!FUNC0(kbd))
		return (FALSE);

	state = (vkbd_state_t *) kbd->kb_data;
	
	FUNC1(state);
	if (!(state->ks_flags & COMPOSE) && (state->ks_composed_char > 0))
		ready = TRUE;
	else
		ready = FUNC3(state);
	FUNC2(state);

	return (ready);
}