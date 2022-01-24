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
struct rtl8366rb_softc {scalar_t__ smi_acquired; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366rb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366rb_softc*) ; 
 scalar_t__ FUNC2 (struct rtl8366rb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8366rb_softc*) ; 
 int RTL_WAITOK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct rtl8366rb_softc *sc, int sleep)
{
	if (sleep == RTL_WAITOK)
		FUNC0(sc);
	else
		if (FUNC2(sc) == 0)
			return (EWOULDBLOCK);
	FUNC1(sc);
	FUNC5(FUNC4(sc->dev), sc->dev);
	sc->smi_acquired = 0;
	FUNC3(sc);
	return (0);
}