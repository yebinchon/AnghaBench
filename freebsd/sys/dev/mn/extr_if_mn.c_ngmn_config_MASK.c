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
struct mn_softc {int framing; scalar_t__ nhooks; char* nodename; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  enum framing { ____Placeholder_framing } framing ;

/* Variables and functions */
 int E1 ; 
 int E1U ; 
 struct mn_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC8(node_p node, char *set, char *ret)
{
	struct mn_softc *sc;
	enum framing wframing;

	sc = FUNC0(node);

	if (set != NULL) {
		if (!FUNC7(set, "line ", 5)) {
			wframing = sc->framing;
			if (!FUNC6(set, "line e1")) {
				wframing = E1;
			} else if (!FUNC6(set, "line e1u")) {
				wframing = E1U;
			} else {
				FUNC5(ret, "ENOGROK\n");
				return;
			}
			if (wframing == sc->framing)
				return;
			if (sc->nhooks > 0) {
				FUNC4(ret, "Cannot change line when %d hooks open\n", sc->nhooks);
				return;
			}
			sc->framing = wframing;
#if 1
			FUNC1(sc);
#else
			mn_reset(sc);
#endif
		} else {
			FUNC3("%s CONFIG SET [%s]\n", sc->nodename, set);
			FUNC5(ret, "ENOGROK\n");
			return;
		}
	}
	
}