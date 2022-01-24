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
typedef  unsigned int u_int ;
struct openpic_softc {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 struct openpic_softc* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct openpic_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ root_pic ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(device_t dev, u_int cpu)
{
	struct openpic_softc *sc;

	FUNC0(dev == root_pic, ("Cannot send IPIs from non-root OpenPIC"));

	sc = FUNC3(dev);
	FUNC5();
	FUNC4(sc, FUNC1(FUNC2(cpuid), 0),
	    1u << cpu);
	FUNC6();
}