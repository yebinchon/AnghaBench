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
struct sge_softc {int /*<<< orphan*/  sge_mtx; scalar_t__ sge_res; int /*<<< orphan*/  sge_res_id; int /*<<< orphan*/  sge_res_type; scalar_t__ sge_irq; scalar_t__ sge_intrhand; scalar_t__ sge_miibus; int /*<<< orphan*/  sge_stat_ch; struct ifnet* sge_ifp; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sge_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct sge_softc*) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct sge_softc *sc;
	struct ifnet *ifp;

	sc = FUNC7(dev);
	ifp = sc->sge_ifp;
	/* These should only be active if attach succeeded. */
	if (FUNC8(dev)) {
		FUNC9(ifp);
		FUNC0(sc);
		FUNC13(sc);
		FUNC1(sc);
		FUNC5(&sc->sge_stat_ch);
	}
	if (sc->sge_miibus)
		FUNC6(dev, sc->sge_miibus);
	FUNC2(dev);

	if (sc->sge_intrhand)
		FUNC4(dev, sc->sge_irq, sc->sge_intrhand);
	if (sc->sge_irq)
		FUNC3(dev, SYS_RES_IRQ, 0, sc->sge_irq);
	if (sc->sge_res)
		FUNC3(dev, sc->sge_res_type, sc->sge_res_id,
		    sc->sge_res);
	if (ifp)
		FUNC10(ifp);
	FUNC12(sc);
	FUNC11(&sc->sge_mtx);

	return (0);
}