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
struct jme_softc {int jme_flags; int /*<<< orphan*/  jme_mtx; int /*<<< orphan*/ ** jme_res; int /*<<< orphan*/  jme_res_spec; int /*<<< orphan*/ ** jme_irq; int /*<<< orphan*/  jme_irq_spec; int /*<<< orphan*/ ** jme_intrhand; struct ifnet* jme_ifp; int /*<<< orphan*/ * jme_miibus; int /*<<< orphan*/ * jme_tq; int /*<<< orphan*/  jme_int_task; int /*<<< orphan*/  jme_eaddr; int /*<<< orphan*/  jme_link_task; int /*<<< orphan*/  jme_tick_ch; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int JME_FLAG_DETACH ; 
 int JME_FLAG_EFUSE ; 
 int JME_FLAG_MSI ; 
 int JME_FLAG_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct jme_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * taskqueue_swi ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct jme_softc *sc;
	struct ifnet *ifp;
	int i;

	sc = FUNC7(dev);

	ifp = sc->jme_ifp;
	if (FUNC8(dev)) {
		FUNC0(sc);
		sc->jme_flags |= JME_FLAG_DETACH;
		FUNC13(sc);
		FUNC1(sc);
		FUNC5(&sc->jme_tick_ch);
		FUNC16(sc->jme_tq, &sc->jme_int_task);
		FUNC16(taskqueue_swi, &sc->jme_link_task);
		/* Restore possibly modified station address. */
		if ((sc->jme_flags & JME_FLAG_EFUSE) != 0)
			FUNC12(sc, sc->jme_eaddr);
		FUNC9(ifp);
	}

	if (sc->jme_tq != NULL) {
		FUNC16(sc->jme_tq, &sc->jme_int_task);
		FUNC17(sc->jme_tq);
		sc->jme_tq = NULL;
	}

	if (sc->jme_miibus != NULL) {
		FUNC6(dev, sc->jme_miibus);
		sc->jme_miibus = NULL;
	}
	FUNC2(dev);
	FUNC11(sc);

	if (ifp != NULL) {
		FUNC10(ifp);
		sc->jme_ifp = NULL;
	}

	for (i = 0; i < 1; i++) {
		if (sc->jme_intrhand[i] != NULL) {
			FUNC4(dev, sc->jme_irq[i],
			    sc->jme_intrhand[i]);
			sc->jme_intrhand[i] = NULL;
		}
	}

	if (sc->jme_irq[0] != NULL)
		FUNC3(dev, sc->jme_irq_spec, sc->jme_irq);
	if ((sc->jme_flags & (JME_FLAG_MSIX | JME_FLAG_MSI)) != 0)
		FUNC15(dev);
	if (sc->jme_res[0] != NULL)
		FUNC3(dev, sc->jme_res_spec, sc->jme_res);
	FUNC14(&sc->jme_mtx);

	return (0);
}