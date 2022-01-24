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
struct ng_bt_mbufq {int dummy; } ;
struct udbp_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; struct ng_bt_mbufq sc_xmitq; struct ng_bt_mbufq sc_xmitq_hipri; } ;
struct ng_tag_prio {scalar_t__ priority; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int EHOSTDOWN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int /*<<< orphan*/  FUNC1 (struct ng_bt_mbufq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_bt_mbufq*,struct mbuf*) ; 
 scalar_t__ FUNC3 (struct ng_bt_mbufq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct udbp_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ NG_PRIO_CUTOFF ; 
 int /*<<< orphan*/  NG_TAG_PRIO ; 
 size_t UDBP_T_WR ; 
 scalar_t__ FUNC8 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(hook_p hook, item_p item)
{
	struct udbp_softc *sc = FUNC7(FUNC6(hook));
	struct ng_bt_mbufq *queue_ptr;
	struct mbuf *m;
	struct ng_tag_prio *ptag;
	int error;

	if (sc == NULL) {
		FUNC4(item);
		return (EHOSTDOWN);
	}
	FUNC0(item, m);
	FUNC4(item);

	/*
	 * Now queue the data for when it can be sent
	 */
	ptag = (void *)FUNC8(m, NGM_GENERIC_COOKIE,
	    NG_TAG_PRIO, NULL);

	if (ptag && (ptag->priority > NG_PRIO_CUTOFF))
		queue_ptr = &sc->sc_xmitq_hipri;
	else
		queue_ptr = &sc->sc_xmitq;

	FUNC9(&sc->sc_mtx);

	if (FUNC3(queue_ptr)) {
		FUNC1(queue_ptr);
		FUNC5(m);
		error = ENOBUFS;
	} else {
		FUNC2(queue_ptr, m);
		/*
		 * start bulk-out transfer, if not already started:
		 */
		FUNC11(sc->sc_xfer[UDBP_T_WR]);
		error = 0;
	}

	FUNC10(&sc->sc_mtx);

	return (error);
}