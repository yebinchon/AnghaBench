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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct lance_softc *sc, void *fromv, int off, int len)
{
	struct le_lebuffer_softc *lesc = (struct le_lebuffer_softc *)sc;
	caddr_t from = fromv;

	for (; len >= 8; len -= 8, off += 8, from += 8)
		FUNC6(lesc->sc_bres, off, FUNC2(from));
	for (; len >= 4; len -= 4, off += 4, from += 4)
		FUNC5(lesc->sc_bres, off, FUNC1(from));
	for (; len >= 2; len -= 2, off += 2, from += 2)
		FUNC4(lesc->sc_bres, off, FUNC0(from));
	if (len == 1)
		FUNC3(lesc->sc_bres, off, *from);
}