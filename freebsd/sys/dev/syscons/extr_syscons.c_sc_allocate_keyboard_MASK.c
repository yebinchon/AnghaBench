#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  keyboard; } ;
typedef  TYPE_1__ sc_softc_t ;
typedef  int /*<<< orphan*/  ki ;
struct TYPE_11__ {int /*<<< orphan*/  kb_unit; int /*<<< orphan*/  kb_name; } ;
typedef  TYPE_2__ keyboard_t ;
struct TYPE_12__ {int /*<<< orphan*/  kb_unit; int /*<<< orphan*/  kb_name; } ;
typedef  TYPE_3__ keyboard_info_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  KBADDKBD ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (char*,int,void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (char*,int,int) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sckbdevent ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(sc_softc_t *sc, int unit)
{
	int		 idx0, idx;
	keyboard_t	*k0, *k;
	keyboard_info_t	 ki;

	idx0 = FUNC2("kbdmux", -1, (void *)&sc->keyboard, sckbdevent, sc);
	if (idx0 != -1) {
		k0 = FUNC4(idx0);

		for (idx = FUNC3("*", -1, 0);
		     idx != -1;
		     idx = FUNC3("*", -1, idx + 1)) {
			k = FUNC4(idx);

			if (idx == idx0 || FUNC0(k))
				continue;

			FUNC1(&ki, sizeof(ki));
			FUNC6(ki.kb_name, k->kb_name);
			ki.kb_unit = k->kb_unit;

			(void)FUNC5(k0, KBADDKBD, (caddr_t) &ki);
		}
	} else
		idx0 = FUNC2("*", unit, (void *)&sc->keyboard, sckbdevent, sc);

	return (idx0);
}