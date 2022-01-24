#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  atkbdc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ ** atkbdc_softc ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 

atkbdc_softc_t
*FUNC2(int unit)
{
	atkbdc_softc_t *sc;

	if (unit >= FUNC1(atkbdc_softc))
		return NULL;
	sc = atkbdc_softc[unit];
	if (sc == NULL) {
		sc = atkbdc_softc[unit]
		   = FUNC0(sizeof(*sc), M_DEVBUF, M_NOWAIT | M_ZERO);
		if (sc == NULL)
			return NULL;
	}
	return sc;
}