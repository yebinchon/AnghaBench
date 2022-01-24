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
struct TYPE_2__ {int manufacturer; int product; int /*<<< orphan*/ ** cis1_info; } ;
struct pccard_softc {TYPE_1__ card; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int function; int number; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pccard_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(device_t bus, device_t child)
{
	struct pccard_ivar *devi = FUNC0(child);
	struct pccard_function *pf = devi->pf;
	struct pccard_softc *sc = FUNC1(bus);
	int i;

	FUNC2(bus, "<unknown card>");
	FUNC3(" (manufacturer=0x%04x, product=0x%04x, function_type=%d) "
	    "at function %d\n", sc->card.manufacturer, sc->card.product,
	    pf->function, pf->number);
	FUNC2(bus, "   CIS info: ");
	for (i = 0; sc->card.cis1_info[i] != NULL && i < 4; i++)
		FUNC3("%s%s", i > 0 ? ", " : "", sc->card.cis1_info[i]);
	FUNC3("\n");
	return;
}