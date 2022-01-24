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
struct le_lebuffer_softc {int /*<<< orphan*/  sc_bres; } ;
struct lance_softc {int dummy; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct lance_softc *sc, void *tov, int off, int len)
{
	struct le_lebuffer_softc *lesc = (struct le_lebuffer_softc *)sc;
	caddr_t to = tov;

	for (; len >= 8; len -= 8, off += 8, to += 8)
		FUNC2(to,
		    FUNC6(lesc->sc_bres, off));
	for (; len >= 4; len -= 4, off += 4, to += 4)
		FUNC1(to,
		    FUNC5(lesc->sc_bres, off));
	for (; len >= 2; len -= 2, off += 2, to += 2)
		FUNC0(to,
		    FUNC4(lesc->sc_bres, off));
	if (len == 1)
		*to = FUNC3(lesc->sc_bres, off);
}