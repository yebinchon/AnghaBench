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
struct exca_softc {int memalloc; int ioalloc; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EXCA_ADDRWIN_ENABLE ; 
 int /*<<< orphan*/  EXCA_INTR ; 
 int /*<<< orphan*/  EXCA_INTR_CARDTYPE_IO ; 
 int /*<<< orphan*/  EXCA_INTR_ENABLE ; 
 int /*<<< orphan*/  EXCA_INTR_RESET ; 
 int EXCA_IO_WINS ; 
 int EXCA_MEM_WINS ; 
 int /*<<< orphan*/  EXCA_PWRCTL ; 
 int /*<<< orphan*/  EXCA_PWRCTL_OE ; 
 int /*<<< orphan*/  FUNC2 (struct exca_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct exca_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct exca_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct exca_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct exca_softc*) ; 

void
FUNC7(struct exca_softc *sc, device_t child)
{
	int win;

	/* enable socket i/o */
	FUNC5(sc, EXCA_PWRCTL, EXCA_PWRCTL_OE);

	FUNC4(sc, EXCA_INTR, EXCA_INTR_ENABLE);
	/* hold reset for 30ms */
	FUNC0(30*1000);
	/* clear the reset flag */
	FUNC5(sc, EXCA_INTR, EXCA_INTR_RESET);
	/* wait 20ms as per PC Card standard (r2.01) section 4.3.6 */
	FUNC0(20*1000);

	FUNC6(sc);

	/* disable all address windows */
	FUNC4(sc, EXCA_ADDRWIN_ENABLE, 0);

	FUNC5(sc, EXCA_INTR, EXCA_INTR_CARDTYPE_IO);
	FUNC1(sc->dev, "card type is io\n");

	/* reinstall all the memory and io mappings */
	for (win = 0; win < EXCA_MEM_WINS; ++win)
		if (sc->memalloc & (1 << win))
			FUNC3(sc, win);
	for (win = 0; win < EXCA_IO_WINS; ++win)
		if (sc->ioalloc & (1 << win))
			FUNC2(sc, win);
}