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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  atkbdc_softc_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 

int
FUNC3(int unit, atkbdc_softc_t *sc, struct resource *port0,
		   struct resource *port1)
{
	return FUNC0(sc, FUNC2(port0),
			    FUNC1(port0),
			    FUNC1(port1));
}