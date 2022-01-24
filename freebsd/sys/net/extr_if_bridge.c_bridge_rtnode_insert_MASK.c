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
typedef  size_t uint32_t ;
struct bridge_softc {int /*<<< orphan*/  sc_brtcnt; int /*<<< orphan*/  sc_rtlist; int /*<<< orphan*/ * sc_rthash; } ;
struct bridge_rtnode {scalar_t__ brt_vlan; int /*<<< orphan*/  brt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int EEXIST ; 
 struct bridge_rtnode* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_rtnode*,struct bridge_rtnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_rtnode*,struct bridge_rtnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bridge_rtnode*,int /*<<< orphan*/ ) ; 
 struct bridge_rtnode* FUNC5 (struct bridge_rtnode*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brt_hash ; 
 int /*<<< orphan*/  brt_list ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(struct bridge_softc *sc, struct bridge_rtnode *brt)
{
	struct bridge_rtnode *lbrt;
	uint32_t hash;
	int dir;

	FUNC0(sc);

	hash = FUNC6(sc, brt->brt_addr);

	lbrt = FUNC1(&sc->sc_rthash[hash]);
	if (lbrt == NULL) {
		FUNC4(&sc->sc_rthash[hash], brt, brt_hash);
		goto out;
	}

	do {
		dir = FUNC7(brt->brt_addr, lbrt->brt_addr);
		if (dir == 0 && brt->brt_vlan == lbrt->brt_vlan)
			return (EEXIST);
		if (dir > 0) {
			FUNC3(lbrt, brt, brt_hash);
			goto out;
		}
		if (FUNC5(lbrt, brt_hash) == NULL) {
			FUNC2(lbrt, brt, brt_hash);
			goto out;
		}
		lbrt = FUNC5(lbrt, brt_hash);
	} while (lbrt != NULL);

#ifdef DIAGNOSTIC
	panic("bridge_rtnode_insert: impossible");
#endif

out:
	FUNC4(&sc->sc_rtlist, brt, brt_list);
	sc->sc_brtcnt++;

	return (0);
}