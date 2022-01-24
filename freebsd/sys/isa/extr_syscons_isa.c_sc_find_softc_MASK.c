#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct video_adapter {int dummy; } ;
struct keyboard {int dummy; } ;
struct TYPE_5__ {struct keyboard* kbd; struct video_adapter* adp; } ;
typedef  TYPE_1__ sc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ main_softc ; 
 int /*<<< orphan*/  sc_devclass ; 

sc_softc_t
*FUNC3(struct video_adapter *adp, struct keyboard *kbd)
{
	sc_softc_t *sc;
	int i;
	int units;

	sc = &main_softc;
	if ((adp == NULL || adp == sc->adp) &&
	    (kbd == NULL || kbd == sc->kbd))
		return (sc);
	units = FUNC1(sc_devclass);
	for (i = 0; i < units; ++i) {
	        sc = FUNC2(FUNC0(sc_devclass, i));
		if (sc == NULL)
			continue;
		if ((adp == NULL || adp == sc->adp) &&
		    (kbd == NULL || kbd == sc->kbd))
			return (sc);
	}
	return (NULL);
}