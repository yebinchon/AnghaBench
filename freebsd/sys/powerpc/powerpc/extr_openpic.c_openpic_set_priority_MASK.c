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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct openpic_softc {scalar_t__ sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OPENPIC_TPR_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 int FUNC2 (struct openpic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct openpic_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ root_pic ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static __inline void
FUNC6(struct openpic_softc *sc, int pri)
{
	u_int tpr;
	uint32_t x;

	FUNC4();
	tpr = FUNC0((sc->sc_dev == root_pic) ? FUNC1(cpuid) : 0);
	x = FUNC2(sc, tpr);
	x &= ~OPENPIC_TPR_MASK;
	x |= pri;
	FUNC3(sc, tpr, x);
	FUNC5();
}