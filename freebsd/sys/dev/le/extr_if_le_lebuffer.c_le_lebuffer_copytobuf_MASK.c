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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct lance_softc *sc, void *fromv, int off, int len)
{
	struct le_lebuffer_softc *lesc = (struct le_lebuffer_softc *)sc;
	caddr_t from = fromv;

	for (; len >= 2; len -= 2, off += 2, from += 2)
		FUNC1(lesc->sc_bres, off, FUNC2(from));
	if (len == 1)
		FUNC0(lesc->sc_bres, off + 1, *from);
}