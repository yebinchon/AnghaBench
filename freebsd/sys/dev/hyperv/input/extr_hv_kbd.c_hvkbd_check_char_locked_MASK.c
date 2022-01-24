#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;
struct TYPE_8__ {int sc_flags; } ;
typedef  TYPE_2__ hv_kbd_sc ;

/* Variables and functions */
 int FALSE ; 
 int HVKBD_FLAG_POLLING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int TRUE ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(keyboard_t *kbd)
{
	FUNC0();
	if (!FUNC1(kbd))
		return (FALSE);

	hv_kbd_sc *sc = kbd->kb_data;
	if (sc->sc_flags & HVKBD_FLAG_POLLING)
		FUNC3(sc, 0);
	if (FUNC2(sc)) {
		return (TRUE);
	}
	return (FALSE);
}