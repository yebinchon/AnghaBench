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
struct cbb_softc {int /*<<< orphan*/ * exca; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_OFF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EXCA_INTR ; 
 int /*<<< orphan*/  EXCA_INTR_ENABLE ; 
 int /*<<< orphan*/  EXCA_PWRCTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cbb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(device_t brdev, device_t child)
{
	struct cbb_softc *sc = FUNC2(brdev);

	FUNC0(("cbb_pcic_socket_disable\n"));

	/* Turn off the card's interrupt and leave it in reset, wait 10ms */
	FUNC3(&sc->exca[0], EXCA_INTR, 0);
	FUNC4("cbbP1", hz / 100);

	/* power down the socket */
	FUNC1(brdev, CARD_OFF);
	FUNC3(&sc->exca[0], EXCA_PWRCTL, 0);

	/* wait 300ms until power fails (Tpf). */
	FUNC4("cbbP2", hz * 300 / 1000);

	/* enable CSC interrupts */
	FUNC3(&sc->exca[0], EXCA_INTR, EXCA_INTR_ENABLE);
	return (0);
}